#!/bin/bash

# Default values for parameters
activation_key=""
organization=""

# Function to display the help message
function show_help() {
    echo "Usage: $0 --activation-key <activation-key> --organization <organization>"
}

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    key="$1"

    case $key in
        --activation-key)
            activation_key="$2"
            shift
            shift
            ;;
        --organization)
            organization="$2"
            shift
            shift
            ;;
        *)
            # Unknown option
            show_help
            exit 1
            ;;
    esac
done

# Check if either parameter is not provided
if [ -z "$activation_key" ] || [ -z "$organization" ]; then
    show_help
    exit 1
fi

# If all checks pass, echo "Hi!"
echo "Hi!"

/usr/bin/subscription-manager register --activationkey lstejska --org 5894300
# TODO: Enable all required repos

/usr/bin/dnf module enable satellite -y
/usr/bin/dnf install satellite -y
