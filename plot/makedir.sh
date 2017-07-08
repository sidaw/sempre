# groups vega specs into directories according to dataset
declare -a arr=("car" "population" "movies" "barley" "seattle-weather" "stocks")
## now loop through the above array
mkdir templates
for i in "${arr[@]}"
do
mkdir "./templates/$i";
grep -Ril $i 'specs/'  | xargs -I '{}' cp '{}' "./templates/$i/";
done
