#!/bin/bash
set -ex

if [ -n "$1" ];then
  cp -a "$1" /opt/workspace/src/main/
fi

sbt swaggerModelCodeGen
