#!/bin/bash

# Run SonarQube analysis with GATE conditions
sonar-scanner \
  -Dsonar.host.url=<SonarQube URL> \
  -Dsonar.login=<SonarQube token> \
  -Dsonar.qualitygate.wait=true
