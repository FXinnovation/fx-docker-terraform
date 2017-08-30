#!/bin/sh

set -eo pipefail

COMMAND=$1
TERRAFORM_INIT_OPT="-get-plugins=false -plugin-dir ${TF_PLUGINS_DIR}"

## Add a layer of convenience for user migrating from terraform 0.9.x that
## doesn't run 'init' in there flow
#
if [[ "${COMMAND}" != "init" && ! -e ./.terraform  ]] ; then
  echo "NOTICE:  running 'init' as a convenience for former 0.9 users"
  terraform init ${TERRAFORM_INIT_OPT}
fi

## Transparently use $TF_PLUGINS_DIR for user that manually run 'init'
#
if [[ "${COMMAND}" == "init" ]] ; then
  exec /bin/terraform "$@" ${TERRAFORM_INIT_OPT}
else
  exec /bin/terraform "$@"
fi
