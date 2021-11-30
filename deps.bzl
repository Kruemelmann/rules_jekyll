load("//third_party:third_party.bzl", "load_third_party_libraries")
load("//third_party:transitive_dependencies.bzl", "load_transitive_dependencies")

def rules_jekyll_dependencies():
    load_third_party_libraries()
    load_transitive_dependencies()



