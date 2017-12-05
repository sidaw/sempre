# Semantic parsing for plotting

Scripts for plotting

## Compile and run

* ant interactive; ./plot/run @mode=plot -JsonExecutor.compileVega false

* To pull example plots and process paths:
  ./plot/run @mode=setup

## Get data

run `./pull-dependencies plot` to download `sempre/plot-data`.
You can find the current data and some brief descriptions.

Add run parameter `-Dataset.inPaths train1:plot-data/sidaw.ex.jsonl train2:plot-data/sampledata.jsonl train3:plot-data/megha.ex.jsonl`

The turker data is probably not very reliable currently.

To use lexicon in grammar: 
First, run `python vega_lite_paths.py --descriptions True` to generate vega-lite-paths.txt which contains descriptions lexicon is based on.

Next, run `python generate_lexicon.py` to generate  `plotting.lexicon` and`plotting_tfidf.lexicon`. 

Finally, add run parameter: `-SimpleLexicon.inPaths ./plot/plotting_tfidf.lexicon`

## Experiments

To run a quick test:

`plot/run @mode=plot -server false -Dataset.inPaths train:plot-data/randomWithCanon_train.jsonl dev:plot-data/randomWithCanon_test.jsonl -Learner.maxTrainIters 2`

Ice's parameters for adding init

`plot/run @mode=plot  -printall -maxexamples train:0 +tags init-plot -beamsize 500 -maxCandidates 50 -derivationScoreNoise 1.0`