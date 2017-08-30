#!/bin/sh

set -eo pipefail

COMMAND=$1

if [[ "${COMMAND}" == "init" ]] ; then
  TERRAFORM_OPT="-get-plugins=false -plugin-dir ${TF_PLUGINS_DIR}"
fi

exec /bin/terraform "$@" ${TERRAFORM_OPT}
