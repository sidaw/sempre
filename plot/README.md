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
