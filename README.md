# gateapplication-German

Processing pipeline for German, performing Tokenisation, POS Tagging and NER.

## Installation of precompiled version

A pre-compiled version of this application can be downloaded as a ZIP archive from: 
* http:http://downloads.gate.ac.uk/plugins/gateapplication-German-v1.0.zip


## Installation by cloning the repository

NOTE: for these instructions you need to be on a Linux-like OS, and have a Java 8 compiler and the "ant" build tool installed. GATE must be installed
and the environment variable ```GATE_HOME``` must point the the root directory of GATE.

* Clone the github repository using the "--recursive"  option to also pull in the submodules:
  ```git clone --recursive https://github.com/GateNLP/gateapplication-German.git```
* Changine into the newly created directory:
  ```cd gateapplication-German```
* Compile the plugins that were added as submodules:
  ```./plugins/compile-plugins.sh```
