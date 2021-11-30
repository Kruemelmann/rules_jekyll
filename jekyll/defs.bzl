"""Rules for building Jekyll based websites.
"""

load("//jekyll:jekyll.bzl", "jekyll_build_rule")

def jekyll_build(**attrs):
    """
    Args:
      **attrs: Rule attributes
    """
    jekyll_build_rule(**attrs)
