#!/bin/bash

# This script uses a file with Questions>
# saving question and answer in json for>

# Uses questions.txt file for questions >
# Resumes asking questions where it left>
# Type 'e' to exit

# Initialize variables
question_file="questions.txt"
output_file="chat_hist.json"
questions=()

# Check if chat history file exists, if >
#if [ ! -f "$output_file" ]; then
#  echo -e "{\n  \"messages\": []\n}" > >
#fi

# Read questions from file
while IFS= read -r line; do
  questions+=("$line")
done < "$question_file"

# Start building the JSON array
json_array="\"messages\": ["

# Loop through questions
for question in "${questions[@]}"; do
  # Prompt user with the question
  echo "$question"
# Read user's answer
  read -r answer

  # Check if user wants to exit
  if [ "$answer" = "e" ]; then
    break
  fi

  # Format question and answer in JSON
  json_array+="\n    {\n      \"role\": >
done
