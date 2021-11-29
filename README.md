Rules Jekyll
============

---
**NOTE**

NOT PRODUCTION READY. WORK IN PROGRESS
---

This repo holds the rules to build my jekyll based blog.

Usage
-----

### `WORKSPACE` File

```python
git_repository(
    name = "kruemelmann_rules_jekyll",
    remote = "https://github.com/Kruemelmann/rules_jekyll.git",
    branch = "main",
)

load(
    "@kruemelmann_rules_jekyll//:deps.bzl",
    "rules_jekyll_dependencies",
)

rules_jekyll_dependencies()
```

### `BUILD.bazel` Files

```python
filegroup(
    name = "jekyll-files",
    srcs = glob(
        ["**/*"],
        exclude = [
            ".git/**",
            ".github/**",
            "bazel-*/**",
            "WORKSPACE",
            "BUILD",
        ],
    ),
)

jekyll_build(
    name = "local-build",
    srcs = [":jekyll-files"],
)

```

## Tipps

For better compatibility you should use [bazelisk](https://github.com/bazelbuild/bazelisk). Its a wrapper around bazel and reads the bazeliskrc-File in this project. After this it downloads and uses the correct bazel version.

## License
[MIT](https://choosealicense.com/licenses/mit/)
