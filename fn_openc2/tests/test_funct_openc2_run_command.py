# -*- coding: utf-8 -*-
"""Tests using pytest_resilient_circuits"""

import pytest
from resilient_circuits.util import get_config_data, get_function_definition
from resilient_circuits import SubmitTestFunction, FunctionResult

PACKAGE_NAME = "fn_openc2"
FUNCTION_NAME = "openc2_run_command"

# Read the default configuration-data section from the package
config_data = get_config_data(PACKAGE_NAME)

# Provide a simulation of the Resilient REST API (uncomment to connect to a real appliance)
resilient_mock = "pytest_resilient_circuits.BasicResilientMock"


def call_openc2_run_command_function(circuits, function_params, timeout=5):
    # Create the submitTestFunction event
    evt = SubmitTestFunction("openc2_run_command", function_params)

    # Fire a message to the function
    circuits.manager.fire(evt)

    # circuits will fire an "exception" event if an exception is raised in the FunctionComponent
    # return this exception if it is raised
    exception_event = circuits.watcher.wait("exception", parent=None, timeout=timeout)

    if exception_event is not False:
        exception = exception_event.args[1]
        raise exception

    # else return the FunctionComponent's results
    else:
        event = circuits.watcher.wait("openc2_run_command_result", parent=evt, timeout=timeout)
        assert event
        assert isinstance(event.kwargs["result"], FunctionResult)
        pytest.wait_for(event, "complete", True)
        return event.kwargs["result"].value


class TestOpenc2RunCommand:
    """ Tests for the openc2_run_command function"""

    def test_function_definition(self):
        """ Test that the package provides customization_data that defines the function """
        func = get_function_definition(PACKAGE_NAME, FUNCTION_NAME)
        assert func is not None

    mock_inputs_1 = {
        "openc2_action_name": "sample text",
        "openc2_actuator": "sample text",
        "openc2_target": "sample text",
        "openc2_extra_options": {"type": "text", "content": "sample line one\nsample line two"},
        "openc2_full_command": {"type": "text", "content": "sample line one\nsample line two"}
    }

    expected_results_1 = {"value": "xyz"}

    mock_inputs_2 = {
        "openc2_action_name": "sample text",
        "openc2_actuator": "sample text",
        "openc2_target": "sample text",
        "openc2_extra_options": {"type": "text", "content": "sample line one\nsample line two"},
        "openc2_full_command": {"type": "text", "content": "sample line one\nsample line two"}
    }

    expected_results_2 = {"value": "xyz"}

    @pytest.mark.parametrize("mock_inputs, expected_results", [
        (mock_inputs_1, expected_results_1),
        (mock_inputs_2, expected_results_2)
    ])
    def test_success(self, circuits_app, mock_inputs, expected_results):
        """ Test calling with sample values for the parameters """

        results = call_openc2_run_command_function(circuits_app, mock_inputs)
        assert(expected_results == results)
