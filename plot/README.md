# Semantic parsing for plotting

Scripts for plotting

## Compile and run

* ant interactive; ./plot/run @mode=plot -JsonExecutor.compileVega false

* To pull example plots and process paths:
  ./plot/run @mode=setup

## Get data

run `./pull-dependencies plot` to get `sempre/plot-data`

Add run parameter `-Dataset.inPaths train:plot-data/sampledata.jsonl`
