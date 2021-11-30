# this rule will do my jekyll build
def _jekyll_build_impl(ctx):

    out_file = ctx.actions.declare_directory("_site")

    ctx.actions.run_shell(
        inputs = ctx.files.srcs,
        outputs = [out_file],
        arguments = [],
        command = "echo \"hello world\" ",
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
