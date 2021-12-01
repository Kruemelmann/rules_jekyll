# Jekyll rules for [Bazel](https://bazel.build)

Jekyll rules for Bazel

---
**NOTE**

THIS IS NOT PRODUCTION READY:) WORK IN PROGRESS

---


## Usage

### `WORKSPACE` File
```python
git_repository(
   name = "kruemelmann_rules_jekyll",
   remote = "https://github.com/Kruemelmann/rules_jekyll.git",
   branch = "main",
)
load("@kruemelmann_rules_jekyll//jekyll:deps.bzl", "jekyll_rules_dependencies")
jekyll_rules_dependencies()
load("@kruemelmann_rules_jekyll//jekyll:defs.bzl", "jekyll_rules_toolchain")
jekyll_rules_toolchain()
```

### `BUILD` File
```python
# Jekyll rule (custom maybe move to an other repo)
load("@kruemelmann_rules_jekyll//jekyll:defs.bzl", "jekyll_build")

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
            "e2e/**",
            "scripts/**",
        ],
    ),
)

jekyll_build(
    name = "local-build",
    srcs = [":jekyll-files"],
)
```

## License
[MIT](https://choosealicense.com/licenses/mit/)
