#!/usr/bin/env bash
# groups vega specs into directories according to dataset
declare -a arr=("cars" "population" "movies" "barley" "seattle-weather" "stocks")
## now loop through the above array
[[ -e templates ]] && echo "Error: ./templates exists. Please delete it and call $0 again" && exit 1
mkdir templates
for i in "${arr[@]}"
do
  mkdir "./templates/$i";
  grep -Ril $i'.\(json\|csv\|tsv\)' 'specs/' --include "*.vl.json" | xargs -I '{}' cp '{}' "./templates/$i/";
done
