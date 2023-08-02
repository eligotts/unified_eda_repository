#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Please provide an environment name as a parameter."
  exit 1
fi

ENV_NAME=$1
BASE_DIR=$(pwd)
ENV_DIR="$BASE_DIR/$ENV_NAME"

# Create the virtual environment
python3 -m venv "$ENV_DIR"
echo "Created virtual environment: $ENV_DIR"

# Activate the virtual environment
source "$ENV_DIR/bin/activate"
echo "Activated virtual environment: $ENV_DIR"

# Install packages from requirements.txt
pip install -r "$BASE_DIR/requirements.txt"
echo "Installed packages from requirements.txt"

# Deactivate the virtual environment
deactivate
echo "Deactivated virtual environment"

echo "Environment setup completed."
