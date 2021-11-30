# this rule will do my jekyll build
#TODO(kruemelmann) find out how to call repository rules in workspace loading phase???
#load("@coinbase_rules_ruby//ruby:defs.bzl","rb_bundle")

def _jekyll_build_impl(ctx):
    #TODO see above
    #rb_bundle(
        #name = "bundle",
        #gemfile = ":Gemfile",
        #gemfile_lock = ":Gemfile.lock",
        #bundler_version = "2.1.2",
        #full_index = True,
    #)

    out_file = ctx.actions.declare_directory("_site")

    ctx.actions.run_shell(
        inputs = ctx.files.srcs,
        outputs = [out_file],
        arguments = [],
        #command = "bundle install",
        command = "ls -al",
    )
    return [DefaultInfo(files = depset([out_file]))]

jekyll_build_rule = rule(
    implementation = _jekyll_build_impl,
    doc = """
Jekyll rule documentation.

TODO add some docs about how to use jekyll rule
""",
    attrs = {
        "srcs": attr.label_list(),
    },
)


