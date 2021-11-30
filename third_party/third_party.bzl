"""
File with all 3rd party dependencies needed for the project
"""

load("//third_party/rules_ruby:direct.bzl", "load_rules_ruby")

def load_third_party_libraries():
    """Load all third party dependencies"""
    load_rules_ruby()
