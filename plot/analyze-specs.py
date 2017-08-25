#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys, os, shutil, re, argparse, json, glob
from codecs import open
from itertools import izip
from collections import defaultdict, Counter, OrderedDict


ORDER = {'x': 0, 'y': 1}

class Analyzer(object):
    UNIQUE = False

    data = []

    def analyze(self, spec, filename):
        if 'encoding' not in spec or 'mark' not in spec:
            return False
        del spec['data']
        if 'transform' in spec:
            del spec['transform']
        mark = spec['mark']
        if isinstance(mark, dict):
            mark = mark['type']
        encodings = []
        for key, value in spec['encoding'].items():
            assert isinstance(value, dict)
            if value.get('aggregate') == 'count' or value.get('field') == '*':
                encodings.append((key, 'count'))
            elif 'field' in value:
                if value.get('aggregate'):
                    encodings.append((key, value['type'] + '_' + value['aggregate']))
                else:
                    encodings.append((key, value['type']))
            elif 'value' in value:
                continue
            else:
                print >> sys.stderr, 'WARNING:', filename, key, value
                encodings.append((key, value))
        # Record the possible combination
        if not encodings:
            return False
        combo = OrderedDict()
        combo['mark'] = mark
        combo['encoding'] = OrderedDict(
                sorted(encodings, key=lambda (x, y): ORDER.get(x, x)))
        self.data.append(combo)
        return True

    def summarize(self):
        print '['
        lines = [json.dumps(item) for item in self.data]
        if self.UNIQUE:
            lines = set(lines)
        for i, line in enumerate(sorted(lines)):
            print line + ('' if i == len(lines) - 1 else ',')
        print ']'
    


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--indir', default='specs')    
    parser.add_argument('-u', '--unique', action='store_true')
    args = parser.parse_args()

    if args.unique:
        Analyzer.UNIQUE = True
    
    analyzer = Analyzer()
    filenames = glob.glob(os.path.join(args.indir, '*.vl.json'))
    print >> sys.stderr, 'Found {} files'.format(len(filenames))
    for filename in filenames:
        with open(filename) as fin:
            spec = json.load(fin)
            analyzer.analyze(spec, filename)
    analyzer.summarize()
    

if __name__ == '__main__':
    main()

