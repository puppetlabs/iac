# Blog Tools
Some scripts to make the [IAC weekly status update blog](https://puppetlabs.github.io/iac/) a bit easier to write
## Kerminator to Markdown
This script will take the output of the Kerminator command `!modules released` and convert it to a bullet list in markdown with:
- The module name (hyperlinked to the module on Forge)
- The version released
It will skip over unsupported modules
## Usage Instructions
- Run `!modules released` and save the output to a file
- Run `./kerminator_to_blog_md.sh /path/to/kerminator.out`
- Paste output in to blog post
- Post blog!
### TODO
- Link to specific CHANGELOG section for version we're listing whenever the URI format is more consistent (e.g. https://forge.puppet.com/puppetlabs/accounts/changelog#v610-2020-01-24)
