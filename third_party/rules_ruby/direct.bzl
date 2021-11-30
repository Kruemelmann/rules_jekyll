"""
Dependency to coinbase rules_ruby
"""

load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def load_rules_ruby():
    maybe(
        git_repository,
        name = "coinbase_rules_ruby",
        remote = "https://github.com/coinbase/rules_ruby.git",
        branch = "master",
    )


