#!/bin/bash
set -eu

build_eureka() {
  local eureka_build_dir=$1
  pull_fresh_source https://github.com/Netflix/eureka.git $eureka_build_dir
  gradle_build $eureka_build_dir
}
#[ -n $(config-get build_eureka) ] && build_eureka $(config-get eureka_build_dir)
debug-log "build_eureka is $(config-get build_eureka)"
[ "$(config-get build_eureka)" == "true" ] && debug-log "shell sees build_eureka as true" || debug-log "shell sees build_eureka as false"

