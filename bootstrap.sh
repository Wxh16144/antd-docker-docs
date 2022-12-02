#!/bin/sh

temp_dir=$(mktemp -d)
branch=${1:-master}
workdir=${2:-$temp_dir}
repo_url=${3:-https://github.com/ant-design/ant-design.git}
npm_registry=${4:-https://registry.npmjs.org/}

git clone --depth 1 -b $branch $repo_url $workdir
cd $workdir

npm config set registry $npm_registry
npm install
npm run site

ls $temp_dir | grep -v '^_site' | xargs rm -rf