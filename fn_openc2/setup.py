#!/usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import setup, find_packages
import glob
import ntpath


def get_module_name(module_path):
    """
    Return the module name of the module path
    """
    return ntpath.split(module_path)[1].split(".")[0]


def snake_to_camel(word):
    """
    Convert a word from snake_case to CamelCase
    """
    return ''.join(x.capitalize() or '_' for x in word.split('_'))


setup(
    name="fn_openc2",
    display_name="<<display name of your app here>>",
    version="1.0.0",
    license="<<insert here>>",
    author="Ryan Gordon",
    author_email="ryan.gordon1@ibm.com",
    url="<<your company url>>",
    description="Resilient Circuits Components for 'fn_openc2'",
    long_description="""Resilient Circuits Components for 'fn_openc2'""",
    install_requires=[
        "resilient-circuits>=30.0.0",
        "resilient-lib>=39.0.0"
    ],
    packages=find_packages(),
    include_package_data=True,
    platforms="any",
    classifiers=[
        "Programming Language :: Python",
    ],
    entry_points={
        "resilient.circuits.components": [
            # When setup.py is executed, loop through the .py files in the components directory and create the entry points.
            "{}FunctionComponent = fn_openc2.components.{}:FunctionComponent".format(snake_to_camel(get_module_name(filename)), get_module_name(filename)) for filename in glob.glob("./fn_openc2/components/[a-zA-Z]*.py")
        ],
        "resilient.circuits.configsection": ["gen_config = fn_openc2.util.config:config_section_data"],
        "resilient.circuits.customize": ["customize = fn_openc2.util.customize:customization_data"],
        "resilient.circuits.selftest": ["selftest = fn_openc2.util.selftest:selftest_function"]
    }
)
