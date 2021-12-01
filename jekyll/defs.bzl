"""Rules for building Jekyll based websites.
"""

load("@kruemelmann_rules_jekyll//jekyll:jekyll.bzl",
    _jekyll_build = "jekyll_build_rule",
)

load(
    "@coinbase_rules_ruby//ruby:deps.bzl",
    "ruby_register_toolchains",
    "rules_ruby_dependencies",
)
load("@coinbase_rules_ruby//ruby:defs.bzl", "rb_bundle")


jekyll_build = _jekyll_build


######TODO Remove this when its working and i can fetch the deps
def jekyll_rules_toolchain_impl(ctx):
    rules_ruby_dependencies()
    ruby_register_toolchains()
    rb_bundle(
        name = "gems",
        gemfile = "//:Gemfile",
        gemfile_lock = "//:Gemfile.lock",
    )

dummy = repository_rule(
    implementation = jekyll_rules_toolchain_impl,
    attrs = {
        "srcs": attr.label_list(),
    },
)

def jekyll_rules_toolchain():
    dummy(name= "kruemelmann_rules_jekyll_toolchain")



