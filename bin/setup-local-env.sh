#!/bin/bash

# Exit if any command fails
set -e

# Include useful functions
. "$(dirname "$0")/includes.sh"

# Change to the expected directory
cd "$(dirname "$0")/.."

echo $(status_message "Starting the Luehrsen // Heinrich development enviroment..." )

# Check Docker is installed and running
. "$(dirname "$0")/install-docker.sh"

# Install wordpress and needed components
. "$(dirname "$0")/install-wordpress.sh"

CURRENT_URL=$(docker-compose run -T --rm cli option get siteurl)

echo "\nWelcome to the Theme Review Boilerplate\n"
echo "Open $(action_format "$CURRENT_URL") to get started!"
