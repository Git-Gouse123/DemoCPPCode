#!/bin/bash

# Generate compiler warnings report using warnings-ng plugin
jenkins-plugin-cli --servletUrl $http://43.205.144.215:8080//warnings-ng/ \
                   --action recordIssues \
                   --pattern "build/**/*.log"
