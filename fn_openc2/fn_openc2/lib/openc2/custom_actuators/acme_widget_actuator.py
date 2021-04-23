""" This file is an example of how you define your own customer actuators
using the openc2 libary.
The goal is to eventually have OpenC2 commands standardized so that can be run on any machine with minimal change
but as we move towards this, custom actuators can provide alot of flexibility for your response plans needs.
"""
# custom actuator
from openc2 import CustomActuator
from stix2 import properties
@CustomActuator('x-acme-widget', [
    ('name', properties.StringProperty(required=True)),
    ('version', properties.FloatProperty())
])
class AcmeWidgetActuator(object):
    def __init__(self, version=None, **kwargs):
        if version and version < 1.0:
            raise ValueError("'%f' is not a supported version." % version)