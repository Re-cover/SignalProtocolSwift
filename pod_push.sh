#!/bin/zsh --login 

specsName="PrivateSpecs"
specsGitUrl="https://gitlab.sachsen.cc/labs/privatespecs.git"
specsFolder="${HOME}/.cocoapods/repos/${specsName}"

if [ ! -d "$specsFolder" ]; then
  echo "${specsName} not existed"
  echo "pod repo add ${specsName} ${specsGitUrl}"
  pod repo add ${specsName} ${specsGitUrl}
fi

pod repo push ${specsName} --sources=${specsGitUrl} --allow-warnings --verbose
