# this rule will do my jekyll build

def jekyll_build_impl(ctx):
    out_dir = ctx.actions.declare_directory("_site")

    ctx.actions.run_shell(
        inputs = ctx.files.srcs,
        outputs = [out_dir],
        command = ("jekyll build -d %s" % out_dir.path),
    )

    ctx.actions.run_shell(
        inputs = [out_dir],
        outputs = [ctx.outputs.out],
        command = "tar -zcf %s %s" % (ctx.outputs.out.path, out_dir.path),
    )

jekyll_build_rule = rule(
    implementation = jekyll_build_impl,
    attrs = {
        "srcs": attr.label_list(),
    },
    outputs = {
        "out": "site.tar",
    },
)
