#!/usr/bin/env bash
# Test 
# watch the java files and continously deploy the service
gradle build
skaffold run -p dev
reflex -r "\.java$" -- bash -c 'gradle build && skaffold run -p dev'
