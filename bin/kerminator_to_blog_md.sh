#!/bin/bash

FORGE_BASE_URI="https://forge.puppet.com"
CHANGELOG_URI="changelog#"
SUPPORTED_TAG="[supported]"

print_usage() {
	echo -e "\nUSAGE:\n"
	echo "Run kerminator in Slack to get the last 7 days of released modules: !modules released 7."
	echo "Save the output of kerminator to a file."
	echo "Run this script with the first arg pointing to the file above."
	echo -e "\n./kerminator_to_blog_md.sh /path/to/kerminator_output.txt\n"
}

if [ -z "$1" ] || [ `test -f "$1"` ]; then
	print_usage
	exit 1
fi

output=""
skippedModules=0

while read line; do
	supported=$(echo -ne $line | cut -d ' ' -f 7)
	if [[ "$supported" == "$SUPPORTED_TAG" ]]; then
		moduleName=$(echo -ne $line | cut -d ' ' -f 1 | sed 's/-/\//')
		version=$(echo -ne "v"; echo -ne $line | cut -d ' ' -f 3)
		output="$output\n- [$moduleName]($FORGE_BASE_URI/$moduleName) ($version)"
	else
		skippedModules=$(($skippedModules + 1))
	fi
done < "$1"

echo -e $output | sort
echo ""
echo "Skipped unsupported modules: $skippedModules"
