#!/bin/bash

# Quick Flutter App Runner
# Usage: ./scripts/quick_run.sh [environment] [mode]
# Example: ./scripts/quick_run.sh dev debug

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

# Function to show usage
show_usage() {
    echo -e "${BLUE}Usage:${NC}"
    echo "  ./scripts/quick_run.sh [environment] [mode]"
    echo ""
    echo -e "${BLUE}Environments:${NC}"
    echo "  dev  - Development environment"
    echo "  prod - Production environment"
    echo ""
    echo -e "${BLUE}Modes:${NC}"
    echo "  debug   - Debug mode"
    echo "  release - Release mode"
    echo ""
    echo -e "${BLUE}Examples:${NC}"
    echo "  ./scripts/quick_run.sh dev debug"
    echo "  ./scripts/quick_run.sh prod release"
}

# Check if arguments are provided
if [ $# -eq 0 ]; then
    show_usage
    exit 1
fi

# Get arguments
environment=$1
mode=$2

# Validate environment
if [[ "$environment" != "dev" && "$environment" != "prod" ]]; then
    echo -e "${RED}❌ Invalid environment. Use 'dev' or 'prod'${NC}"
    show_usage
    exit 1
fi

# Validate mode
if [[ "$mode" != "debug" && "$mode" != "release" ]]; then
    echo -e "${RED}❌ Invalid mode. Use 'debug' or 'release'${NC}"
    show_usage
    exit 1
fi

# Set main file based on environment
if [[ "$environment" == "dev" ]]; then
    main_file="lib/main_dev.dart"
else
    main_file="lib/main_prod.dart"
fi

# Display configuration
echo -e "${GREEN}🚀 Running Flutter App${NC}"
echo -e "${BLUE}Environment:${NC} $environment"
echo -e "${BLUE}Main File:${NC} $main_file"
echo -e "${BLUE}Mode:${NC} $mode"
echo -e "${BLUE}Flavor:${NC} $environment"
echo ""

# Run the app
if [[ "$mode" == "debug" ]]; then
    flutter run --flavor="$environment" --target="$main_file"
else
    flutter run --flavor="$environment" --target="$main_file" --release
fi

