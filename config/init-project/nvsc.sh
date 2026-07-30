#!/usr/bin/env sh
mkdir -p .vscode
cd .vscode
echo \* > .gitignore
cp -n ~/git/myetc/config/init-project/c_cpp/launch.json .
cp -n ~/git/myetc/config/init-project/c_cpp/tasks.json tasks.json
~/git/myetc/config/init-project/c_cpp_properties_generator > c_cpp_properties.json
cd ..
