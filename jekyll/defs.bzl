"""Rules for building Jekyll based websites.
"""

load(
    "@kruemelmann_rules_jekyll//jekyll:jekyll.bzl",
    _jekyll_build = "jekyll_build_rule",
)

load(
    "@kruemelmann_rules_jekyll//jekyll/private:jekyll_repositories.bzl",
    _jekyll_repositories = "jekyll_repositories",
)


jekyll_build = _jekyll_build
jekyll_repositories = _jekyll_repositories
