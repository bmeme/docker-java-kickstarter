#!/usr/bin/env bash

set -e

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
source "${SCRIPT_DIR}/../../common/lib.sh"

if [[ "$1" == "descr" ]]; then
  echo -n "Generate new Java project"
  exit 0
fi

if [[ "$1" == "run" ]]; then
  echo -e "============ ${CB}Generating${CN} Java project ..."
  echo "${LOGPREFIX} CMD ${C_BIN} mvn archetype:generate -DgroupId=${PROJECT_VENDOR} -DartifactId=${PROJECT_NAME} -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false" >> ${LOGFILE}
  ${C_BIN} mvn archetype:generate -DgroupId=${PROJECT_VENDOR} -DartifactId=${PROJECT_NAME} -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false
  ${C_BIN} mv ${PROJECT_NAME}/* .
  ${C_BIN} rmdir ${PROJECT_NAME}
fi
