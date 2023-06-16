#!/bin/bash
DomainName="" #add the domain name of ALB here
SERVICE_URL="http://{$DomainName}"

# Function to perform the health check
function check_health() {
  local response=$(curl -s -o /dev/null -w "%{http_code}" "$SERVICE_URL/now")
  if [[ $response -eq 200 ]]; then
    echo "Service is healthy"
  else
    echo "Service is not healthy"
  fi
}

# Execute the health check
check_health
