SCRIPT_DIR = '~/bash_scripts'

git init

npm init -y

GITIGNORE_SRC="
node_modules
\n
\n
.vscode
"

echo $GITIGNORE_SRC >> .gitignore

touch .nvmrc

echo 'REMINDER ***'
echo 'Remember to edit these files: .gitignore, .nvmrc'
