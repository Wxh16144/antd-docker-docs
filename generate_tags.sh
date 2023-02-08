#!/bin/sh

# input 5.2.0 => output: 5, 5.2, 5.2.0, latest
# input 4.10.1 => output: 4, 4.10, 4.10.1
function main(){
  local version=$2
  local image_name=$1
  local major=$(echo $version | cut -d. -f1)
  local minor=$(echo $version | cut -d. -f2)
  # local patch=$(echo $version | cut -d. -f3)

  local is_latest=$(echo $major | grep -c '^5$')

  local tags="$image_name:$version,$image_name:$major.$minor,$image_name:$major"

  if [ $is_latest -eq 1 ]; then
    tags="$tags,$image_name:latest"
  fi
  
  echo "\"$tags\""
}

main $@
