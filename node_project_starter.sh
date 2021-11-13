#!/bin/bash

# Check if dependencies exist
# ---------------------------
for item in 'git' 'npm' 'blah'; do
  which $item

  if [ $(echo $?) -ne 0 ]; then
    echo "⚠️⚠️⚠️ ERROR ⚠️⚠️⚠️"
    echo "The app cannot locate this command: ${item}"
    echo "Exiting the app now."
    exit 1
  fi
done

git init

npm init -y

# TODO: Store the string as a variable.
echo $'
node_modules

.vscode' > .gitignore

[[ $(node -v) =~ ([0-9\.]+) ]] && NODE_VERSION="${BASH_REMATCH[1]}"
echo $NODE_VERSION > .nvmrc

echo '⚠️⚠️⚠️ REMINDER ⚠️⚠️⚠️'
echo 'Remember to edit these files: .gitignore, .nvmrc'
