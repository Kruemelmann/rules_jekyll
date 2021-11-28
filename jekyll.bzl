# this rule will do my jekyll build
load("@coinbase_rules_ruby//ruby:defs.bzl","rb_bundle")

def _jekyll_build_impl(ctx):
    rb_bundle(
        name = "bundle",
        gemfile = ":Gemfile",
        gemfile_lock = ":Gemfile.lock",
        bundler_version = "2.1.2",
        full_index = True,
    )

    out_file = ctx.actions.declare_directory("_site")

    ctx.actions.run_shell(
        inputs = ctx.files.srcs,
        outputs = [out_file],
        arguments = [],
        #command = "bundle install",
        command = "ls -al",
    )
    return [DefaultInfo(files = depset([out_file]))]

jekyll_build = rule(
    implementation = _jekyll_build_impl,
    attrs = {
        "srcs": attr.label_list(),
    },
)

print("custom jekyll rule loaded")

