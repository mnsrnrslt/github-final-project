#!/bin/bash
# Simple Interest Calculator

echo "=== Simple Interest Calculator ==="

read -p "Enter the principal amount: " principal
read -p "Enter the annual rate of interest (in percentage): " rate
read -p "Enter the time period (in years): " time

# Calculate simple interest using bc for floating-point precision
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "----------------------------------"
echo "Calculated Simple Interest: $interest"
echo "Total Amount (Principal + Interest): $total"
