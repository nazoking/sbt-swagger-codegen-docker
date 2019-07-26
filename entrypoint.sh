#!/bin/bash
set -ex

if [ -n "$1" ];then
  cp -a "$1" /opt/workspace/src/main/
fi

cd /opt/workspace
sbt compile
find target/scala-2.12/src_managed/main/swagger/ -type f -exec cat {} \;
