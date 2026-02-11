#!/bin/bash
# Start the observability stack
docker compose up -d
echo "Observability stack started. Access Grafana at http://localhost:3000"
