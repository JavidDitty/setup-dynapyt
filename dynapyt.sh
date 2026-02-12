#!/bin/bash

# Define the output directory for dynapyt
DYNAPYT_OUTPUT=/home/runner/dynapyt_output
echo "DYNAPYT_OUTPUT=$DYNAPYT_OUTPUT" >> "$GITHUB_ENV"
mkdir -p $DYNAPYT_OUTPUT

DYNAPYT_SESSION_ID=$EPOCHSECONDS
echo "DYNAPYT_SESSION_ID=$DYNAPYT_SESSION_ID" >> "$GITHUB_ENV"

DYNAPYT_ANALYSES=/tmp/dynapyt_analyses-$DYNAPYT_SESSION_ID.txt
echo "DYNAPYT_ANALYSES=$DYNAPYT_ANALYSES" >> "$GITHUB_ENV"

# Instrument the repository with dynapyt
pip install dynapyt
python -m dynapyt.run_instrumentation --directory "$GITHUB_WORKSPACE" --analysis dynapyt.analyses.TraceAll.TraceAll
echo "dynapyt.analyses.TraceAll.TraceAll" > "$DYNAPYT_ANALYSES"
