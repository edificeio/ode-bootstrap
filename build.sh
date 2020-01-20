#!/bin/bash

if [ ! -e node_modules ]
then
  mkdir node_modules
fi

if [ -z ${USER_UID:+x} ]
then
  export USER_UID=1000
  export GROUP_GID=1000
fi


build () {
  local extras=$1
  docker-compose run --rm -u "$USER_UID:$GROUP_GID" node sh -c "npm rebuild node-sass --no-bin-links && npm run sass:build"
}

install () {
  docker-compose run --rm -u "$USER_UID:$GROUP_GID" node sh -c "npm rebuild node-sass --no-bin-links && npm install"
}

watch () {
  docker-compose run --rm -u "$USER_UID:$GROUP_GID" node sh -c "npm rebuild node-sass --no-bin-links && npm run dev:watch"
}

publish () {
  LOCAL_BRANCH=`echo $GIT_BRANCH | sed -e "s|origin/||g"`
  docker-compose run --rm -u "$USER_UID:$GROUP_GID" node sh -c "npm publish --tag $LOCAL_BRANCH"
}

for param in "$@"
do
  case $param in
    deps)
      install
      ;;
    build)
      build
      ;;
    install)
      install && build
      ;;
    watch)
      watch
      ;;
    publish)
      publish
      ;;
    *)
      echo "Invalid argument : $param"
  esac
  if [ ! $? -eq 0 ]; then
    exit 1
  fi
done