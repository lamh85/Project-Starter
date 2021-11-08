#!/bin/bash

git init

npm init -y

echo $'
node_modules

.vscode' > .gitignore

[[ $(node -v) =~ ([0-9\.]+) ]] && NODE_VERSION="${BASH_REMATCH[1]}"
echo $NODE_VERSION > .nvmrc

echo 'REMINDER ***'
echo 'Remember to edit these files: .gitignore, .nvmrc'
