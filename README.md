# Jekyll rules for [Bazel](https://bazel.build)

[Jekyll](https://jekyllrb.com/) rules for [Bazel](https://bazel.build)

## State

* The rule works by using a shell command inside (not good will be refactored)

## TODO

1. remove the shell commands and build using commands from a toolchain
2. maybe i have to write rules for bundler to get TODO#1
3. add tests and examples to the repository so users get an idea of how to use
4. add 'bundle exec jekyll serve --livereload' livereload

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

## Contributing

Pull requests welcome:)

If you like to do some bigger changes please open an issue, so we can chat about.

## Authors

* kruemelmann - [@kruemelmann](https://github.com/kruemelmann/)

## License
[MIT](https://choosealicense.com/licenses/mit/)
