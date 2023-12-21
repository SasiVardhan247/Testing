#!/bin/bash
# Get the IP address of merchant-module-service using nslookup
MERCHANT_MODULE_IP=$(nslookup merchant-module-service | awk '/^Address: / { print $2 }')

# Set the REACT_APP_MERCHANT_MODULE_URL environment variable
export REACT_APP_MERCHANT_MODULE_URL="http://$MERCHANT_MODULE_IP:3003"

# Start the application (npm start or any other command you use)
exec "$@"
