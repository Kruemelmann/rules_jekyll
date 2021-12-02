# this rule will do my jekyll build

def jekyll_build_impl(ctx):
    out_dir = ctx.actions.declare_directory("_site")
    ctx.actions.run_shell(
        inputs = ctx.files.srcs,
        outputs = [out_dir],
        arguments = [],
        command = "jekyll build",
    )
    #print(out_dir)


    return [DefaultInfo(files = depset([out_dir]))]


jekyll_build_rule = rule(
    implementation = jekyll_build_impl,
    attrs = {
        "srcs": attr.label_list(),
    },
)
