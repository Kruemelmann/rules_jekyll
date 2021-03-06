"""
Transitive dependencies for Bazel standard library Skylib
"""

load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

#FIXME not nice i just want to call the deps macro of them but this leads to a import cycle error(@coinbase is not present yet)
def load_rules_ruby_transitive_dependencies():
    maybe(
        http_archive,
        name = "bazel_skylib",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
        ],
        sha256 = "97e70364e9249702246c0e9444bccdc4b847bed1eb03c5a3ece4f83dfe6abc44",
    )
    maybe(
        http_archive,
        name = "rules_pkg",
        url = "https://github.com/grahamjenson/rules_pkg/archive/3e0cd514ad1cdd2d23ab3d427d34436f75060018.zip",
        sha256 = "85e26971904cbb387688bd2a9e87c105f7cd7d986dc1b96bb1391924479c5ef6",
        strip_prefix = "rules_pkg-3e0cd514ad1cdd2d23ab3d427d34436f75060018/pkg",
    )
