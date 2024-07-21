#!/bin/bash

# Function to handle SIGINT (Ctrl+C) and exit gracefully
cleanup() {
    echo -e "\n\033[1;31mScript interrupted. Stopping Docker containers...\033[0m"
    # Stop the running Docker containers
    docker stop rocket-pdf-admin rocket-pdf-user 2>/dev/null
    exit 1
}

# Trap SIGINT (Ctrl+C) and call the cleanup function
trap cleanup SIGINT



# Print heading with ASCII art
echo -e "\033[1;34m"
echo "      ___           ___           ___           ___           ___                   "
echo "     /\  \         /\  \         /\__\         /|  |         /\__\                  "
echo "    /::\  \       /::\  \       /:/  /        |:|  |        /:/ _/_         ___     "
echo "   /:/\:\__\     /:/\:\  \     /:/  /         |:|  |       /:/ /\__\       /\__\    "
echo "  /:/ /:/  /    /:/  \:\  \   /:/  /  ___   __|:|  |      /:/ /:/ _/_     /:/  /    "
echo " /:/_/:/__/___ /:/__/ \:\__\ /:/__/  /\__\ /\ |:|__|____ /:/_/:/ /\__\   /:/__/     "
echo " \:\/:::::/  / \:\  \ /:/  / \:\  \ /:/  / \:\/:::::/__/ \:\/:/ /:/  /  /::\  \     "
echo "  \::/~~/~~~~   \:\  /:/  /   \:\  /:/  /   \::/~~/~      \::/_/:/  /  /:/\:\  \    "
echo "   \:\~~\        \:\/:/  /     \:\/:/  /     \:\~~\        \:\/:/  /   \/__\:\  \   "
echo "    \:\__\        \::/  /       \::/  /       \:\__\        \::/  /         \:\__\  "
echo "     \/__/         \/__/         \/__/         \/__/         \/__/           \/__/  "
echo "      ___           ___           ___                                                "
echo "     /\__\         /\  \         /\  \                                               "
echo "    /:/  /         \:\  \       /::\  \         ___                                 "
echo "   /:/  /           \:\  \     /:/\:\  \       /\__\                                "
echo "  /:/  /  ___   ___ /::\  \   /:/ /::\  \     /:/  /                                "
echo " /:/__/  /\__\ /\  /:/\:\__\ /:/_/:/\:\__\   /:/__/                                 "
echo " \:\  \ /:/  / \:\/:/  \/__/ \:\/:/  \/__/  /::\  \                                 "
echo "  \:\  /:/  /   \::/__/       \::/__/      /:/\:\  \                                "
echo "   \:\/:/  /     \:\  \        \:\  \      \/__\:\  \                               "
echo "    \::/  /       \:\__\        \:\__\          \:\__\                              "
echo "     \/__/         \/__/         \/__/           \/__/                              "
echo -e "\033[0m"

echo -e "\033[0m"
echo -e "\033[0m"
echo -e "\033[1;32mProject For AWS GenAI Bootcamp.\033[0m"

echo -e "\033[0m"

# Run the Admin container
echo -e "\033[1;32mStarting Admin container...\033[0m"
cd Admin || { echo "Failed to navigate to Admin directory"; exit 1; }
docker run -e BUCKET_NAME=rocket-chat-bedrock -v /mnt/c/Users/hites/.aws:/root/.aws -p 8083:8083 hiteshchouhan22/rocket_chat:admin &
ADMIN_PID=$!

# Run the User container
echo -e "\033[1;32mStarting User container...\033[0m"
cd ../User || { echo "Failed to navigate to User directory"; exit 1; }
docker run -e BUCKET_NAME=rocket-chat-bedrock -v /mnt/c/Users/hites/.aws:/root/.aws -p 8084:8084 hiteshchouhan22/rocket_chat:user &
USER_PID=$!

# Wait for all background processes to finish
wait $ADMIN_PID
wait $USER_PID

echo -e "\033[1;34mAll Docker containers have started successfully.\033[0m"
