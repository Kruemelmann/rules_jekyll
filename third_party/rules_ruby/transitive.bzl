"""
Transitive dependencies for Bazel standard library Skylib
"""

#TODO(kruemelmann) find out why this leads me to a cycle???

#load(
    #"@coinbase_rules_ruby//ruby:deps.bzl",
    #"ruby_register_toolchains",
    #"rules_ruby_dependencies",
#)

def load_rules_ruby_transitive_dependencies():
    pass
    #rules_ruby_dependencies()
    #ruby_register_toolchains()
