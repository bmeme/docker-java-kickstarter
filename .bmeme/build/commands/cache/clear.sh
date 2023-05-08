#!/usr/bin/env bash

set -e

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
source "${SCRIPT_DIR}/../../common/lib.sh"

if [[ "$1" == "descr" ]]; then
  echo -n "Clear cache"
  exit 0
fi

if [[ "$1" == "run" ]]; then
  echo ""
  echo -e "Clearing ${CG}cache data${CN} ..."
  echo ""
  echo "${LOGPREFIX} CMD rm -rf ${BASE_PRJ_DIR}/cache/.m2/repository" >> ${LOGFILE}
  rm -rf ${BASE_PRJ_DIR}/cache/.m2/repository
fi
