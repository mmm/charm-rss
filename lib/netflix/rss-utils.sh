#!/bin/bash
set -eu

build_rss() {
  local rss_build_dir=$1
  pull_fresh_source https://github.com/Netflix/recipes-rss.git $rss_build_dir
  gradle_build $rss_build_dir
}
#[ -n $(config-get build_rss) ] && build_rss $(config-get rss_build_dir)
debug-log "build_rss is $(config-get build_rss)"
[ "$(config-get build_rss)" == "true" ] && debug-log "shell sees build_rss as true" || debug-log "shell sees build_rss as false"

