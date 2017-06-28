"""Script to compute all possible paths through a JSON object conforming to the Vega-lite specification.

Args:
    schema_path (str): path to the JSON Schema file, e.g. "/Downloads/vega-lite-v2.json"
    out_path (str): path to save the computed paths, e.g. "/Desktop/vega-lite-paths.txt"

- The out file contains one path per line, where the elements of the path are separated by tabs.
- There should be roughly 30k paths.
- paths involving arrays will have an "items" element, indicating that subsequent keys are properties of an
  element of that array.
- TODO: need to handle circular references properly
"""

import json
from jsonschema import RefResolver
from collections import deque, namedtuple
import argparse


# parse command line args
arg_parser = argparse.ArgumentParser()
arg_parser.add_argument('schema_path')
arg_parser.add_argument('out_path')
args = arg_parser.parse_args()


# load Vega Lite schema and reference resolver
with open(args.schema_path) as f:
    schema = json.load(f)
resolver = RefResolver.from_schema(schema)
resolve = lambda ref: resolver.resolve(ref)[1]


# represents a node in the schema
class Node(namedtuple('Node', ['schema', 'full_path'])):

    @property
    def path(self):
        # remove "anyOf"s and references
        return tuple(key for key in self.full_path if not (key.startswith("anyOf[") or key.startswith("#/")))


def children(node):
    """Return the children of a given node.
    
    Args:
        node (Node)

    Returns:
        new_nodes (list[Node])
    """
    schema, full_path = node.schema, node.full_path
    child_nodes = []

    if "anyOf" in schema:
        for i, s in enumerate(schema["anyOf"]):
            child_nodes.append(Node(s, full_path + ["anyOf[{}]".format(i)]))

    # jump through reference
    if "$ref" in schema:
        ref = schema["$ref"]

        # avoid circular references
        if not (ref in full_path):
            child_nodes.append(Node(resolve(ref), full_path + [ref]))

    # arrays have "items"
    if "items" in schema:
        child_nodes.append(Node(schema["items"], full_path + ["items"]))

    # objects have "properties"
    if "properties" in schema:
        for key, s in sorted(schema["properties"].items()):
            child_nodes.append(Node(s, full_path + [key]))

    return child_nodes


# explore all paths, DFS
print 'Exploring paths'

paths = set()
seed = Node(schema, [])
queue = deque([seed])

while len(queue) > 0:
    state = queue.pop()
    paths.add(state.path)
    new_states = children(state)
    for state in reversed(new_states):
        queue.append(state)

# remove empty path
paths.remove(tuple())

# write paths to file
with open(args.out_path, 'w') as f:
    paths = sorted(paths)
    for path in paths:
        line = '{}\n'.format('\t'.join(path))
        f.write(line)