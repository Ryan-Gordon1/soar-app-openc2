# -*- coding: utf-8 -*-
"""Function implementation"""

import logging
from resilient_circuits import ResilientComponent, function, handler, StatusMessage, FunctionResult, FunctionError
from resilient_lib import ResultPayload, RequestsCommon, validate_fields

PACKAGE_NAME = "fn_openc2"
FN_NAME = "openc2_run_command"


class FunctionComponent(ResilientComponent):
    """Component that implements Resilient function 'openc2_run_command''"""

    def __init__(self, opts):
        """Constructor provides access to the configuration options"""
        super(FunctionComponent, self).__init__(opts)
        self.fn_options = opts.get(PACKAGE_NAME, {})

    @handler("reload")
    def _reload(self, event, opts):
        """Configuration options have changed, save new values"""
        self.fn_options = opts.get(PACKAGE_NAME, {})

    @function(FN_NAME)
    def _openc2_run_command_function(self, event, *args, **kwargs):
        """Function: A function which can be used to leverage the OpenC2 standardised language for the command and control of technologies that provide or support cyber defenses. Each invocation of a OpenC2 command generally will define an actuator which is the function performed by the Consumer that executes the Command. An action which is the task or activity to be performed and a target which where the action will be performed or against. A function which can be used to leverage the OpenC2 standardised language for the command and control of technologies that provide or support cyber defenses. Each invocation of a OpenC2 command generally will define an actuator which is the function performed by the Consumer that executes the Command. An action which is the task or activity to be performed and a target which where the action will be performed or against. There are two ways to run this. Either providing the full OpenC2 command to the appropriate field or providing the individual values for the other 3 fields."""
        try:
            LOG = logging.getLogger(__name__)
            rc = RequestsCommon(self.opts, self.fn_options)
            rp = ResultPayload(PACKAGE_NAME, **kwargs)

            # Get the wf_instance_id of the workflow this Function was called in
            wf_instance_id = event.message["workflow_instance"]["workflow_instance_id"]

            yield StatusMessage("Starting '{0}' running in workflow '{1}'".format(FN_NAME, wf_instance_id))

            # Get and validate app configs
            # app_configs = validate_fields([
            #     {"name": "api_key", "placeholder": "<your-api-key>"},
            #     {"name": "base_url", "placeholder": "<api-base_url>"}],
            #     self.fn_options)

            # Get and validate required function inputs:
            # If input is optional, remove it from list
            # Optional inputs will still be available in fn_inputs
            # OpenC2 function can take a full command in one field or composed of many fields. This may be changed but for now lets just work with the full command if present 
            # TODO: if full command not provided fallback to the piecemeal fields 
            fn_inputs = validate_fields(
                ["openc2_full_command"],
                kwargs)

            LOG.info("'{0}' inputs: %s", fn_inputs)

            yield StatusMessage("Validations complete. Starting business logic")

            ##############################################
            # PUT YOUR FUNCTION IMPLEMENTATION CODE HERE #
            ##############################################

            # Call API implemtation example:
            # params = {
            #     "key": app_configs.get("api_key"),
            #     "ip_address": fn_inputs.get("artifact_value")
            # }
            #
            # response = rc.execute_call_v2(
            #     method="get",
            #     url=app_configs.get("api_url")
            #     params=params
            # )
            #
            # results = rp.done(True, response.json())

            ##############################################
            # First create an openc2 Command object from the field
            from openc2 import parse, IPv4Address, Command, Response, Args
            
            # If we are not working with the full command and instead piecemeal options we can create an openc2 command object like so 
            # cmd = Command(action=openc2_command_obj.get('action')
            #             target=IPv4Address(ipv4_net = "1.2.3.4"))
            # cmd = parse(cmd.serialize())

            # Because we allow the user to provide a json schema we can try to streamline the code by just using that schema 
            # .get is safer but we can do direct key access because of the validation above
            openc2_command_obj = fn_inputs["openc2_full_command"]

            
            if openc2_command_obj['action'] == "deny" and openc2_command_obj['target']['type'] == "ipv4_net":
                rule = iptc.Rule()
                rule.create_match(openc2_command_obj['target']['ipv4_net'])
                rule.create_target("DROP")

                if openc2_command_obj['args']['response_requested'] == 'complete':
                    resp = Response(status=200)
                    msg = resp.serialize()

            # Do you want to use your own custom actuators ? 
            # Define a class in /lib/openc2/custom_actuators which can
            # be imported and used here:
            # Example: 
            # from fn_openc2.lib.openc2.custom_actuators import acme_widget_actuator
            # widget = AcmeWidgetActuator(name="foo", version=1.1)

            yield StatusMessage("Finished '{0}' that was running in workflow '{1}'".format(FN_NAME, wf_instance_id))

            results = rp.done(True, {"mock_key": "Mock Value!"})

            LOG.info("'%s' complete", FN_NAME)

            # Produce a FunctionResult with the results
            yield FunctionResult(results)
        except Exception as e:
            yield FunctionError(e)
