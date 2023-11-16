#!/bin/bash


if ! python3 -c "import openai" &> /dev/null; then
    pip3 install openai
else
    echo "openai is already installed."
fi

# Check if pygments package is installed
if ! python3 -c "import pygments" &> /dev/null; then
    pip3 install pygments
else
    echo "pygments is already installed."
fi


# Run the Python script and capture the output
PYTHON_OUTPUT=$(python3 ./main.py "$@")

# Use awk to find and replace code between ``` with highlighted code
echo "$PYTHON_OUTPUT"
