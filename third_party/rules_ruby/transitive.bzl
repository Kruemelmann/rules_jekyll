"""
Transitive dependencies for Bazel standard library Skylib
"""

load(
    "@coinbase_rules_ruby//ruby:deps.bzl",
    "ruby_register_toolchains",
    "rules_ruby_dependencies",
)

def load_rules_ruby_transitive_dependencies():
    rules_ruby_dependencies()
    ruby_register_toolchains()
