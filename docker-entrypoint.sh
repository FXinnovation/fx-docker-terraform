#!/bin/sh

set -eo pipefail

COMMAND=$1

if [[ "${COMMAND}" == "init" ]] ; then
  TERRAFORM_OPT="-get-plugins=false -plugin-dir /usr/lib/terraform-provider"
fi

exec /bin/terraform "$@" ${TERRAFORM_OPT}
