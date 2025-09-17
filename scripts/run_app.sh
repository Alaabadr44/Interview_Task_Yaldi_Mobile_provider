#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Function to print colored output
print_colored() {
    local color=$1
    local message=$2
    echo -e "${color}${message}${NC}"
}

# Function to print header
print_header() {
    echo ""
    print_colored $CYAN "╔══════════════════════════════════════════════════════════════╗"
    print_colored $CYAN "║                    Flutter App Runner                      ║"
    print_colored $CYAN "║                                                              ║"
    print_colored $CYAN "║  Choose your environment and build mode                     ║"
    print_colored $CYAN "╚══════════════════════════════════════════════════════════════╝"
    echo ""
}

# Function to validate input
validate_choice() {
    local input=$1
    local valid_options=$2
    for option in $valid_options; do
        if [[ "$input" == "$option" ]]; then
            return 0
        fi
    done
    return 1
}

# Function to get user choice
get_choice() {
    local prompt=$1
    local valid_options=$2
    local choice
    
    while true; do
        read -p "$prompt" choice
        choice=$(echo "$choice" | tr '[:upper:]' '[:lower:]')
        
        if validate_choice "$choice" "$valid_options"; then
            echo "$choice"
            return
        else
            print_colored $RED "❌ Invalid choice. Please try again."
        fi
    done
}

# Main script
main() {
    print_header
    
    # Step 1: Choose Environment
    print_colored $YELLOW "📱 Step 1: Choose Environment"
    print_colored $BLUE "   [1] dev  - Development environment"
    print_colored $BLUE "   [2] prod - Production environment"
    echo ""
    
    environment_choice=$(get_choice "Enter your choice (1/2 or dev/prod): " "1 2 dev prod")
    
    # Convert choice to environment
    if [[ "$environment_choice" == "1" || "$environment_choice" == "dev" ]]; then
        environment="dev"
        main_file="lib/main_dev.dart"
        print_colored $GREEN "✅ Selected: Development Environment"
    else
        environment="prod"
        main_file="lib/main_prod.dart"
        print_colored $GREEN "✅ Selected: Production Environment"
    fi
    
    echo ""
    
    # Step 2: Choose Build Mode
    print_colored $YELLOW "🔧 Step 2: Choose Build Mode"
    print_colored $BLUE "   [1] debug   - Debug mode (faster build, debugging enabled)"
    print_colored $BLUE "   [2] release - Release mode (optimized, production ready)"
    echo ""
    
    mode_choice=$(get_choice "Enter your choice (1/2 or debug/release): " "1 2 debug release")
    
    # Convert choice to mode
    if [[ "$mode_choice" == "1" || "$mode_choice" == "debug" ]]; then
        build_mode="debug"
        print_colored $GREEN "✅ Selected: Debug Mode"
    else
        build_mode="release"
        print_colored $GREEN "✅ Selected: Release Mode"
    fi
    
    echo ""
    
    # Step 3: Display configuration
    print_colored $PURPLE "📋 Configuration Summary:"
    print_colored $BLUE "   Environment: $environment"
    print_colored $BLUE "   Main File: $main_file"
    print_colored $BLUE "   Build Mode: $build_mode"
    print_colored $BLUE "   Flavor: $environment"
    echo ""
    
    # Step 4: Confirm and run
    confirm_choice=$(get_choice "🚀 Do you want to run the app with these settings? (y/n): " "y n yes no")
    
    if [[ "$confirm_choice" == "y" || "$confirm_choice" == "yes" ]]; then
        print_colored $GREEN "🚀 Starting Flutter app..."
        echo ""
        
        # Build the command
        if [[ "$build_mode" == "debug" ]]; then
            flutter run --flavor="$environment" --target="$main_file"
        else
            flutter run --flavor="$environment" --target="$main_file" --release
        fi
    else
        print_colored $YELLOW "❌ Operation cancelled."
        exit 0
    fi
}

# Run the main function
main

