#!/bin/bash
set -eu -o pipefail
if [ $# -eq 0 ]; then
  echo "Usage: $0 [john##] <sempre flags>" 1>&2
  exit 1
fi
cl work "$(cat cl_worksheet.txt)"
host="$1"
shift
flags="$@"
cl run :fig :lib :libsempre :module-classes.txt :plot :plot-data "plot/run @mode=plot -server false $flags" --request-cpus 1 --request-queue "host=${host}" -n sempre-plot -d "sempre-plot, ${flags}"
