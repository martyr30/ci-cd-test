#!/bin/sh

function main() {
  docker login --username oauth --password ${INPUT_PASSWORD} cr.yandex

  DOCKERNAME="${INPUT_NAME}"

  docker build -t ${DOCKERNAME} .
  docker push cr.yandex/crptjipt08rs009ssq7m/${DOCKERNAME}:test

  docker logout
}

main
