#!/bin/zsh
curl -u 'eagletommy52' https://api.github.com/user/repos -d '{"name":"$1"}'

git remote add origin git@github.com:eagletommy52/$1.git
