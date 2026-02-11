# Observability Lab – Runbook

## Start

```bash
docker compose up -d
```

## Stop

```bash
docker compose down
```

## URLs

* Prometheus: [http://localhost:9090](http://localhost:9090)
* Alertmanager: [http://localhost:9093](http://localhost:9093)
* Grafana: [http://localhost:3000](http://localhost:3000) (admin/admin)

## Health checks

```bash
docker compose ps
docker compose logs prometheus
docker compose logs grafana
```

## Alerts

* NodeDown → check if Node Exporter target is up
* HighCPUUsage → check instance CPU usage
* HighMemoryUsage → check memory utilization

## Prometheus queries (examples)

* CPU usage: `100 - (avg by(instance) (irate(node_cpu_seconds_total{mode="idle"}[5m])) * 100)`
* Memory usage: `(node_memory_MemTotal_bytes - node_memory_MemAvailable_bytes) / node_memory_MemTotal_bytes * 100`
* Node up/down: `up`

## Troubleshooting

* Restart a container: `docker compose restart <service>`
* Check logs for errors: `docker compose logs <service>`
* Verify dashboards load correctly in Grafana
* Check Alertmanager for silenced or pending alerts
