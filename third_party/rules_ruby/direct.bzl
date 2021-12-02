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
        commit = "a4bcd8e84cc20b097c7f84a319436698894bf87e",
        shallow_since = "1613636578 -0800",
    )
