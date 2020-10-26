require 'net/ssh'
require 'optparse'

STANDARD_USER_ACCOUNT = 'iacremoterunner'.freeze

@repo_path = nil
@branch = 'release'
@debug = false
@provision_runner_host = nil
@puppet_version = 'puppet6'

OptionParser.new do |opts|
  opts.banner = 'Usage: run_in_portland.rb [options]'

  opts.on('-r', '--repo [STRING]', 'Repository to run tests against') do |r|
    @repo_path = r
  end

  opts.on('-b', '--branch [STRING]', "Branch to check out to (defaults to 'release')") do |b|
    @branch = b
  end

  opts.on('-v', '--verbose', 'Enable verbose logging') do |_|
    @debug = true
  end

  opts.on('-h', '--host [STRING]', 'Host to run against, if already provisioned') do |h|
    @provision_runner_host = h
  end

  opts.on('-p', '--puppet-version [STRING]', 'Puppet agent version to use (default to 6)') do |p|
    @puppet_version = p
  end

end.parse!

raise 'Please specify a repo using -r option' unless @repo_path

@repo = @repo_path.split('/')[-1]
@ssh_session = nil

def log(msg)
  puts msg
end

def debug_log(msg)
  puts msg if @debug
end

def provision_runner
  if @provision_runner_host
    log "Using already provisioned host: #{@provision_runner_host}"
    return
  end
  log 'Provisioning an ubuntu-1804-x86_64 host via ABS to act as a test runner'
  result = `floaty get ubuntu-1804-x86_64 --service abs`
  m = result.match(
    /-\s(?<runner>\w+-\w+\.delivery\.puppetlabs\.net)\s\(ubuntu-1804-x86_64\)/
  )
  raise 'Could not provision an ubuntu-1804-x86_64 host using ABS' unless m
  @provision_runner_host = m['runner']
  log "Runner host: #{@provision_runner_host}"
end

def init_ssh_session(user = 'root')
  debug_log "Connecting to #{@provision_runner_host} with user #{user}"
  @ssh_session.close unless @ssh_session.nil?
  @ssh_session = Net::SSH.start(@provision_runner_host, user)
end

def run_command(command, throw_on_failure = true)
  debug_log "Running command: #{command}"
  result = @ssh_session.exec!("#{command}; echo \"|$?|\"").chomp
  m = result.match(/^(?<output>.*)\|(?<exit_code>\d+)\|$/m)
  raise "Unable to execute #{command}" unless m
  if m['exit_code'].to_i != 0 && throw_on_failure
    debug_log "Command execution failed: #{m['output']}"
    raise "Got a non-zero exit code when running #{command}:\n#{m['output']}"
  end
  { exit_code: m['exit_code'].to_i, output: m['output'] }
end

def create_user
  result = run_command("id -u #{STANDARD_USER_ACCOUNT}", false)
  return if result[:exit_code].zero?
  log "Bumping global ulimit -n to 4096"
  run_command('echo "* soft nofile 4096" >> /etc/security/limits.conf')
  log "Creating user account '#{STANDARD_USER_ACCOUNT}' on #{@provision_runner_host}"
  home_path = "/home/#{STANDARD_USER_ACCOUNT}"
  ssh_path = "#{home_path}/.ssh"
  authorized_keys_path = "#{ssh_path}/authorized_keys"
  run_command("useradd -m -d #{home_path} -s /bin/bash #{STANDARD_USER_ACCOUNT}")
  run_command("usermod -aG sudo #{STANDARD_USER_ACCOUNT}")
  run_command("mkdir #{ssh_path}")
  run_command("cp /root/.ssh/authorized_keys #{authorized_keys_path}")
  run_command("chown -R #{STANDARD_USER_ACCOUNT}:#{STANDARD_USER_ACCOUNT} #{ssh_path}")
  run_command("chmod 700 #{ssh_path}")
  run_command("chmod 600 #{authorized_keys_path}")
  run_command("echo '#{STANDARD_USER_ACCOUNT} ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers")
end

def install_deps
  log "Installing dependencies on #{@provision_runner_host}"
  run_command('sudo apt update')
  run_command('sudo apt -y install build-essential ruby-bundler git ruby-dev libxml2 zlib1g-dev libxslt1-dev screen')
end

def copy_preflight_checks
  log "Performing pre flight checks on #{@repo}"
  inventory_yaml_file_path = File.join(@repo_path, 'inventory.yaml')
  unless File.exists? File.join(@repo_path, 'inventory.yaml')
    raise "Cannot locate #{inventory_yaml_file_path} - please run " \
    "'bundle exec rake provision_list[key]' first"
  end
  raise "#{inventory_yaml_file_path} appears to be empty?" if File.size(inventory_yaml_file_path) < 128
end

def copy_repo_to_runner
  log "Copying #{@repo_path} to #{@provision_runner_host}"
  `rsync -avz --delete --exclude spec/fixtures/ --exclude Gemfile.lock #{@repo_path}/ #{STANDARD_USER_ACCOUNT}@#{@provision_runner_host}:#{@repo}/`
end

def prep_repo_on_runner
  log "Prepping #{@repo} on #{@provision_runner_host}"
  run_command("cd #{@repo} && git checkout #{@branch}")
  run_command("cd #{@repo} && bundle install")
  run_command("cd #{@repo} && bundle exec rake litmus:install_agent[#{@puppet_version}]")
  run_command("cd #{@repo} && bundle exec rake litmus:install_module")
end

def kick_off_tests
  log "Kicking off tests on #{@provision_runner_host} - output will be logged to #{@repo}/screenlog.0"
  run_command("cd #{@repo} && CI=true screen -L -d -m bundle exec rake litmus:acceptance:parallel")
  log('#' * 50)
  log("Track tests by logging in to host as #{STANDARD_USER_ACCOUNT}:")
  log("   1. ssh #{STANDARD_USER_ACCOUNT}@#{@provision_runner_host}")
  log('   2. screen -x')
  log('#' * 50)
  log("DON'T FORGET TO RUN THE TEAR DOWN FROM: #{@repo_path}")
  log('#' * 50)
end

provision_runner
init_ssh_session
create_user
init_ssh_session(STANDARD_USER_ACCOUNT)
install_deps
copy_preflight_checks
copy_repo_to_runner
prep_repo_on_runner
kick_off_tests
