#!/bin/bash

# Execute unit tests using Google Test
cd build
ctest --output-on-failure
