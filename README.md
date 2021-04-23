# soar-app-openc2
An application built for IBM Security SOAR which allows analysts and responders to leverage the OpenC2 standardised language for the command and control of technologies that provide or support cyber defenses.

## Overview:
Cyberattacks are increasingly sophisticated, less expensive to execute, dynamic and automated. The provision of cyber defense via statically configured products operating in isolation is untenable. Standardized interfaces, protocols and data models will facilitate the integration of the functional blocks within a system and between systems. Open Command and Control (OpenC2) is a concise and extensible language to enable machine-to-machine communications for purposes of command and control of cyber defense components, subsystems and/or systems in a manner that is agnostic of the underlying products, technologies, transport mechanisms or other aspects of the implementation. It should be understood that a language such as OpenC2 is necessary but insufficient to enable coordinated cyber responses that occur within cyber relevant time. Other aspects of coordinated cyber response such as sensing, analytics, and selecting appropriate courses of action are beyond the scope of OpenC2.

OpenC2 is a suite of specifications that enables command and control of cyber defense systems and components. OpenC2 typically uses a request-response paradigm where a Command is encoded by a Producer (managing application) and transferred to a Consumer (managed device or virtualized function) using a secure transfer protocol, and the Consumer can respond with status and any requested information.

OpenC2 allows the application producing the commands to discover the set of capabilities supported by the managed devices. These capabilities permit the managing application to adjust its behavior to take advantage of the features exposed by the managed device. The capability definitions can be easily extended in a noncentralized manner, allowing standard and non-standard capabilities to be defined with semantic and syntactic rigor.


[Source for the above](https://docs.oasis-open.org/openc2/oc2ls/v1.0/cs02/oc2ls-v1.0-cs02.html#1-introduction)

#### An extra note
OpenC2 is quickly being adopted by many security vendors. Depending on the tools you have in your SOC you may be able to leverage one of your existing products if the OpenC2 commands are relatively simple.
For example, there is an [SOAR App which integrates directly into Symantec ICDx](https://exchange.xforce.ibmcloud.com/hub/extension/811158e63308075ba4d4e19c779e8cfe) and there is a paper here describing [how you can leverage ICDx with OpenC2](https://static1.squarespace.com/static/5a94b67ff93fd440f0516297/t/5fcf6b001901dd4d2ed4a228/1607428864536/Using+SOAR+with+OpenC2.pdf).