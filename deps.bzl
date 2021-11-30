load("//third_party:third_party.bzl", "load_third_party_libraries")
load("//third_party:transitive_dependencies.bzl", "load_transitive_dependencies")

def rules_jekyll_dependencies():
    load_third_party_libraries()
    load_transitive_dependencies()



#load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

# def rules_jekyll_dependencies():
    #"""Declares external repositories that rules_go_simple depends on. This
    #function should be loaded and called from WORKSPACE files."""

    #git_repository(
        #name = "coinbase_rules_ruby",
        #remote = "https://github.com/coinbase/rules_ruby.git",
        #branch = "master",
    #)





