"""Get log-counts of keys that are leaves in a corpus of vega-lite specs.

These are used to initialize pathPattern feature values in params.txt 
"""
import argparse
import collections
import json
import math
import os
import sys

DATA_DIR = 'templates'

def get_leaves(obj):
  leaves = []
  for k in obj:
    if isinstance(obj[k], dict):
      rec_leaves = get_leaves(obj[k])
      leaves.extend(['%s.%s' % (k, k_rec) for k_rec in rec_leaves])
    else:
      leaves.append(k)
  return leaves

def main():
  counts = collections.Counter()
  for root, dirs, files in os.walk(DATA_DIR):
    for fn in files:
      if not fn.endswith('.json'): continue
      with open(os.path.join(root, fn)) as f:
        obj = json.load(f)
      counts.update(get_leaves(obj))
  for k, v in counts.most_common():  # most_common() just for sorting
    # Log scale because we're using a log-linear model
    # +1 is Laplace smoothing essentially, log(0+1) = 0 so we omit 0 counts
    print '%s\t%f' % (k, math.log(v + 1))

if __name__ == '__main__':
  main()
