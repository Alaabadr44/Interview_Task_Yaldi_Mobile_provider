#!/bin/bash

# Integration Test Runner Script
# This script runs all integration tests for the login page

echo "🚀 Starting Integration Tests for Login Page"
echo "=============================================="

# Set environment variables
export FLUTTER_TEST_TIMEOUT=300
export FLUTTER_TEST_VERBOSE=1

# Function to run a specific test file
run_test() {
    local test_file=$1
    local test_name=$2
    
    echo ""
    echo "🧪 Running $test_name..."
    echo "----------------------------------------"
    
    if flutter test integration_test/$test_file --verbose; then
        echo "✅ $test_name completed successfully"
    else
        echo "❌ $test_name failed"
        return 1
    fi
}

# Function to run all tests
run_all_tests() {
    echo "🎯 Running All Integration Tests"
    echo "================================="
    
    # Run individual test files
    run_test "login_widget_only_test.dart" "Login Page Widget Only Tests"
    run_test "login_page_widget_test.dart" "Login Page Widget Tests"
    
    echo ""
    echo "🎉 All tests completed!"
}

# Function to run specific test scenarios
run_scenario_tests() {
    echo "🎯 Running Scenario Tests Only"
    echo "==============================="
    
    run_test "login_widget_only_test.dart" "Login Page Widget Only Tests"
}

# Function to run basic tests only
run_basic_tests() {
    echo "🎯 Running Basic Tests Only"
    echo "============================"
    
    run_test "login_page_widget_test.dart" "Login Page Widget Tests"
}

# Function to show help
show_help() {
    echo "Integration Test Runner for Login Page"
    echo ""
    echo "Usage: $0 [option]"
    echo ""
    echo "Options:"
    echo "  all       Run all integration tests (default)"
    echo "  basic     Run basic tests only"
    echo "  scenarios Run scenario tests only"
    echo "  help      Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0 all       # Run all tests"
    echo "  $0 basic     # Run basic tests only"
    echo "  $0 scenarios # Run scenario tests only"
}

# Main script logic
case "${1:-all}" in
    "all")
        run_all_tests
        ;;
    "basic")
        run_basic_tests
        ;;
    "scenarios")
        run_scenario_tests
        ;;
    "help")
        show_help
        ;;
    *)
        echo "❌ Unknown option: $1"
        show_help
        exit 1
        ;;
esac

echo ""
echo "🏁 Test execution completed!"
