#! /usr/bin/env bash

source "${HOMEgfs}/ush/preamble.sh"

# Source FV3GFS workflow modules
. "${HOMEgfs}/ush/load_fv3gfs_modules.sh"
status=$?
[[ "${status}" -ne 0 ]] && exit "${status}"

export job="fetch"
export jobid="${job}.$$"

# Execute the JJOB
"${HOMEgfs}/jobs/JGLOBAL_FETCH"
status=$?


exit "${status}"
