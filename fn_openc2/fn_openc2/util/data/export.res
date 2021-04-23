{
  "action_order": [],
  "actions": [
    {
      "automations": [],
      "conditions": [],
      "enabled": true,
      "export_key": "Example: Perform OpenC2 Query",
      "id": 18,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: Perform OpenC2 Query",
      "object_type": "incident",
      "tags": [],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "89187ee5-bb1f-4af4-9508-ebe5babbe214",
      "view_items": [],
      "workflows": [
        "example_openc2_run_query_action"
      ]
    }
  ],
  "apps": [],
  "automatic_tasks": [],
  "export_date": 1619179506010,
  "export_format_version": 2,
  "fields": [
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/openc2_extra_options",
      "hide_notification": false,
      "id": 236,
      "input_type": "textarea",
      "internal": false,
      "is_tracked": false,
      "name": "openc2_extra_options",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "openc2_extra_options",
      "tooltip": "An extra field which provides a very customisable interface for specifying extra params as needed without changing the function definition. This field works best with JSON compliant key-value pairs.",
      "type_id": 11,
      "uuid": "9f413c82-e07a-4d05-95ab-ac55b71359e0",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/openc2_full_command",
      "hide_notification": false,
      "id": 237,
      "input_type": "textarea",
      "internal": false,
      "is_tracked": false,
      "name": "openc2_full_command",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [
        {
          "id": 1,
          "name": "Example Query Action",
          "template": {
            "content": "{    \n     \"action\": \"query\",\n     \"target\": {\n         \"features\": [\n             \"versions\",\n             \"profiles\",\n             \"pairs\"\n         ]\n     }\n}",
            "format": "text"
          },
          "uuid": "d53adac2-a159-4a75-be50-f51b20387f1a"
        }
      ],
      "text": "openc2_full_command",
      "tooltip": "OpenC2 commands are defined in full as JSON. For this reason this field is exposed. If you have a full OpenC2 JSON command you can assign it to this field.",
      "type_id": 11,
      "uuid": "b0e3c8be-2274-43db-a09a-25ba2a2f26ff",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/openc2_target",
      "hide_notification": false,
      "id": 235,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "openc2_target",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "openc2_target",
      "tooltip": "The target for the OpenC2 action to be ran against.",
      "type_id": 11,
      "uuid": "ceb71c4d-a450-49dd-974f-76bd4408dd39",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/openc2_action_name",
      "hide_notification": false,
      "id": 233,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "openc2_action_name",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "openc2_action_name",
      "tooltip": "The name of the OpenC2 action to be ran.",
      "type_id": 11,
      "uuid": "5d3e016e-c1f0-402b-a75e-437c5fe3d2d0",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/openc2_actuator",
      "hide_notification": false,
      "id": 234,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "openc2_actuator",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "openc2_actuator",
      "tooltip": "An optional field where an Actuator can be defined. ",
      "type_id": 11,
      "uuid": "6877bcdf-e50f-4476-a696-5e3605d1ff94",
      "values": []
    },
    {
      "export_key": "incident/internal_customizations_field",
      "id": 0,
      "input_type": "text",
      "internal": true,
      "name": "internal_customizations_field",
      "read_only": true,
      "text": "Customizations Field (internal)",
      "type_id": 0,
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa1"
    }
  ],
  "functions": [
    {
      "apps": [],
      "created_date": 1619178565640,
      "creator": {
        "display_name": "Admin User",
        "id": 1,
        "name": "admin@example.com",
        "type": "user"
      },
      "description": {
        "content": "A function which can be used to leverage the OpenC2 standardised language for the command and control of technologies that provide or support cyber defenses. Each invocation of a OpenC2 command generally will define an actuator which is the function performed by the Consumer that executes the Command. An action which is the task or activity to be performed and a target which where the action will be performed or against. A function which can be used to leverage the OpenC2 standardised language for the command and control of technologies that provide or support cyber defenses. Each invocation of a OpenC2 command generally will define an actuator which is the function performed by the Consumer that executes the Command. An action which is the task or activity to be performed and a target which where the action will be performed or against. There are two ways to run this. Either providing the full OpenC2 command to the appropriate field or providing the individual values for the other 3 fields.",
        "format": "text"
      },
      "destination_handle": "fn_openc2",
      "display_name": "OpenC2: Run Command",
      "export_key": "openc2_run_command",
      "id": 1,
      "last_modified_by": {
        "display_name": "Admin User",
        "id": 1,
        "name": "admin@example.com",
        "type": "user"
      },
      "last_modified_time": 1619179157680,
      "name": "openc2_run_command",
      "tags": [],
      "uuid": "57712b36-301a-4481-a925-3549ced997e4",
      "version": 3,
      "view_items": [
        {
          "content": "b0e3c8be-2274-43db-a09a-25ba2a2f26ff",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "5d3e016e-c1f0-402b-a75e-437c5fe3d2d0",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "6877bcdf-e50f-4476-a696-5e3605d1ff94",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "ceb71c4d-a450-49dd-974f-76bd4408dd39",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "9f413c82-e07a-4d05-95ab-ac55b71359e0",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Example: OpenC2 - Run Query Action",
          "object_type": "incident",
          "programmatic_name": "example_openc2_run_query_action",
          "tags": [],
          "uuid": null,
          "workflow_id": 1
        }
      ]
    }
  ],
  "geos": null,
  "groups": null,
  "id": 1,
  "inbound_mailboxes": null,
  "incident_artifact_types": [],
  "incident_types": [
    {
      "create_date": 1619179504622,
      "description": "Customization Packages (internal)",
      "enabled": false,
      "export_key": "Customization Packages (internal)",
      "hidden": false,
      "id": 0,
      "name": "Customization Packages (internal)",
      "parent_id": null,
      "system": false,
      "update_date": 1619179504622,
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa0"
    }
  ],
  "industries": null,
  "layouts": [],
  "locale": null,
  "message_destinations": [
    {
      "api_keys": [],
      "destination_type": 0,
      "expect_ack": true,
      "export_key": "fn_openc2",
      "name": "fn_openc2",
      "programmatic_name": "fn_openc2",
      "tags": [],
      "users": [],
      "uuid": "e9ff842f-e8e9-45e5-ba07-66140abcb238"
    }
  ],
  "notifications": null,
  "overrides": [],
  "phases": [],
  "regulators": null,
  "roles": [],
  "scripts": [],
  "server_version": {
    "build_number": 6554,
    "major": 40,
    "minor": 0,
    "version": "40.0.6554"
  },
  "tags": [],
  "task_order": [],
  "timeframes": null,
  "types": [],
  "workflows": [
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "example_openc2_run_query_action",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"example_openc2_run_query_action\" isExecutable=\"true\" name=\"Example: OpenC2 - Run Query Action\"\u003e\u003cdocumentation\u003eAn example workflow which uses one of the default values provided with the OpenC2 SOAR function.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0tllpt7\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_1hkka7j\" name=\"OpenC2: Run Command\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"57712b36-301a-4481-a925-3549ced997e4\"\u003e{\"inputs\":{\"b0e3c8be-2274-43db-a09a-25ba2a2f26ff\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"text_content_value\":{\"format\":\"text\",\"content\":\"{    \\n     \\\"action\\\": \\\"query\\\",\\n     \\\"target\\\": {\\n         \\\"features\\\": [\\n             \\\"versions\\\",\\n             \\\"profiles\\\",\\n             \\\"pairs\\\"\\n         ]\\n     }\\n}\"}}}}}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0tllpt7\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0p5mspg\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0tllpt7\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_1hkka7j\"/\u003e\u003cendEvent id=\"EndEvent_0ya6nfg\"\u003e\u003cincoming\u003eSequenceFlow_0p5mspg\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0p5mspg\" sourceRef=\"ServiceTask_1hkka7j\" targetRef=\"EndEvent_0ya6nfg\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1hkka7j\" id=\"ServiceTask_1hkka7j_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"476\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0tllpt7\" id=\"SequenceFlow_0tllpt7_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"476\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"337\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0ya6nfg\" id=\"EndEvent_0ya6nfg_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"825\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"843\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0p5mspg\" id=\"SequenceFlow_0p5mspg_di\"\u003e\u003comgdi:waypoint x=\"576\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"825\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"700.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "creator_id": "admin@example.com",
      "description": "An example workflow which uses one of the default values provided with the OpenC2 SOAR function.",
      "export_key": "example_openc2_run_query_action",
      "last_modified_by": "admin@example.com",
      "last_modified_time": 1619179274945,
      "name": "Example: OpenC2 - Run Query Action",
      "object_type": "incident",
      "programmatic_name": "example_openc2_run_query_action",
      "tags": [],
      "uuid": "90accf2a-9a47-4fa0-ae5c-c5f13163727b",
      "workflow_id": 1
    }
  ],
  "workspaces": []
}
