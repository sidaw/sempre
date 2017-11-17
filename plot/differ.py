#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""Compute the diff of context and targetValue

Usage:
    ./differ.py JSONL_FILENAME

Output: Each line contains
    line_index utterance key1:before_value1|after_value1 ...
"""

import argparse, json


def dfs(tree, key_values, key_prefix=''):
    if isinstance(tree, dict):
        for x, y in tree.items():
            if not isinstance(y, (list, dict)):
                key_values[key_prefix + '.' + x] = y
            else:
                dfs(y, key_values, key_prefix + '.' + x)
    elif isinstance(tree, list):
        for x, y in enumerate(tree):
            x = str(x)
            if not isinstance(y, (list, dict)):
                key_values[key_prefix + '.' + x] = y
            else:
                dfs(y, key_values, key_prefix + '.' + x)


def diff(tree_1, tree_2):
    """Return list[(key, value_1, value_2)]"""
    key_values_1 = {}
    dfs(tree_1, key_values_1)
    key_values_2 = {}
    dfs(tree_2, key_values_2)
    differences = []
    for key in sorted(set(key_values_1) | set(key_values_2)):
        value_1 = key_values_1.get(key)
        value_2 = key_values_2.get(key)
        if value_1 != value_2:
            differences.append((key, value_1, value_2))
    return differences


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('infile', help='jsonl file')
    args = parser.parse_args()
    
    with open(args.infile) as fin:
        for i, line in enumerate(fin):
            data = json.loads(line)
            differences = diff(data['context'], data['targetValue'])
            print '\t'.join([str(i + 1), data['utterance']]
                    + ['{}:{}|{}'.format(*x) for x in differences])

if __name__ == '__main__':
    main()
