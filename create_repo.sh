#!/bin/bash

# Replace these variables with your GitHub username and repository name
USERNAME="Firangi0799"
REPO_NAME="location-chatbot"

# Create the repository on GitHub
gh repo create $USERNAME/$REPO_NAME --public

# Change into the repository directory
cd $REPO_NAME

# Create the folder structure
mkdir -p docs src/chatbot tests data/training_data models notebooks

# Create placeholder files
touch docs/design_document.md docs/user_guide.md src/main.py src/chatbot/__init__.py src/chatbot/chatbot.py notebooks/chatbot_dev.ipynb data/training_data/intents.json models/trained_model.pkl

# Add files to the initial commit
git add .

# Commit the changes
git commit -m "Initial commit"

# Push the changes to GitHub
git push origin main
