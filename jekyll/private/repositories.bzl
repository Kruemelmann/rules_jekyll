load("@kruemelmann_rules_jekyll//third_party:third_party.bzl", "load_third_party_libraries")
load("@kruemelmann_rules_jekyll//third_party:transitive_dependencies.bzl", "load_transitive_dependencies")

def jekyll_rules_dependencies():
    load_third_party_libraries()
    load_transitive_dependencies()
