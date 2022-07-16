#!/bin/sh

branch=${1:-master}
workdir=${2:-\/app}
proxy=$3
repo=${proxy}https://github.com/ant-design/ant-design.git

git clone --depth 1 -b $branch $repo $workdir && cd $workdir
npm config set registry https://registry.npm.taobao.org
npm install
npm run predeploy

rm -rf `ls | grep -v '^_site'`
