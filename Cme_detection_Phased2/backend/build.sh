#!/bin/bash
# Build script for Render deployment

# Upgrade pip
pip install --upgrade pip

# Install Python dependencies
pip install -r requirements.txt

# Create necessary directories
mkdir -p downloads output scripts

echo "Build completed successfully!"
