#!/bin/bash
LOG_FILE="./logs/server.log"
OUTPUT_FILE="./logs/error_report.txt"

echo "[2/2] Parsing log file for ERRORs..."

if [ -f "$LOG_FILE" ]; then
    grep "ERROR" "$LOG_FILE" > "$OUTPUT_FILE"
    echo "Errors extracted successfully to: $OUTPUT_FILE"
else
    echo "Error: Log file not found at $LOG_FILE"
fi
