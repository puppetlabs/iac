module IAC
  module JsonifyRepoList
    def jsonify_repo_list(input)
      Hash[input.map do |document|
        [document.data['github'], document.data]
      end].to_json
    end
  end
end

Liquid::Template.register_filter(IAC::JsonifyRepoList)
