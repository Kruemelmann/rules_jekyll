load("@coinbase_rules_ruby//ruby:defs.bzl", "rb_bundle")

def jekyll_repositories():
    rb_bundle(
        name = "gems",
        gemfile = "//:Gemfile",
        gemfile_lock = "//:Gemfile.lock",
    )
