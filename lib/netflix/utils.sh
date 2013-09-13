#!/bin/bash
set -x

pull_fresh_source() {
  local repo=$1
  local destination=$2
  rm -Rf $destination
  mkdir -p $destination
  git clone $repo $destination
}

gradle_build() {
  local build_dir=$1
  cd $build_dir
	export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
	#export JAVA_HOME=/usr/lib/jvm/java-6-openjdk
	export PATH=$JAVA_HOME/bin:$PATH
  ./gradlew clean build
  cd $CHARM_DIR
}

