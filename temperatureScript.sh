#!/bin/bash

defaultTemps=(70.2 70.0 67.0 66.0 55.0 40.0 35.0)
temps=()

# Read each -t argument as a new temperature
while getopts "t:" opt
do
    case $opt in
	t)  temps+=("$OPTARG");;
    esac
done

# Use default temps if no overrides provided
if [ ${#temps[@]} -eq 0 ]; then
    temps=("${defaultTemps[@]}")
fi

# Read access token from environment variable
if [ -z "${ACCESS_TOKEN}" ]; then
	echo "Run 'export ACCESS_TOKEN=your_token_value' first" >&2
	exit 1
fi

# Send each temp to thingsboard
for i in "${temps[@]}"
do
	if [ ! -z "$i" ]; then
    	curl -d "{\"temperature\": $i}" https://demo.thingsboard.io/api/v1/$ACCESS_TOKEN/telemetry --header "Content-Type:application/json"
    	echo "$i"
    	sleep 10
    fi
done
