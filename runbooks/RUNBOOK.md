# Observability Lab – Runbook

## Start
docker compose up -d

## Stop
docker compose down

## URLs
- Prometheus: http://localhost:9090
- Alertmanager: http://localhost:9093
- Grafana: http://localhost:3000 (admin/admin)

## Health checks
docker compose ps
docker compose logs prometheus
docker compose logs grafana
