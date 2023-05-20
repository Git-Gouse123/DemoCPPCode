#!/bin/bash

# Run SonarQube analysis with GATE conditions
sonar-scanner \
  -Dsonar.host.url=http://35.154.61.125:9000/ \
  -Dsonar.login=squ_ec001b48f1bd3012ff21f56a6cd83749e5f3ff26 \
  -Dsonar.projectKey=demo \
  -Dsonar.source=src \
  -Dsonar.qualitygate.wait=true
