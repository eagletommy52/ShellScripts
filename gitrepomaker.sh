#!/bin/bash
USERNAME="eagletommy52"
echo "%%%% Creating Repo $1 on Github... %%%%"

curl -s -o /dev/null -u "$USERNAME" https://api.github.com/user/repos -d '{"name":"'"$1"'"}'
echo "%%%% Adding remote origin on Github %%%%"
git remote add origin https://github.com/$USERNAME/$1.git
echo "%%%% Pushing to remote with upstream flag %%%%"
git push -u origin master
