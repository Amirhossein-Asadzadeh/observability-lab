# Observability Lab — Prometheus + Alertmanager + Grafana + Node Exporter

## Description

A full monitoring stack using Docker:

* **Prometheus** — metrics collection
* **Alertmanager** — alert routing
* **Grafana** — dashboards
* **Node Exporter** — system metrics

## Run

Start the stack:

```bash
docker compose up -d
docker compose ps
```

## Ports

* Grafana: 3000
* Prometheus: 9090
* Alertmanager: 9093
* Node Exporter: 9100

## Notes

* Replace any secrets (e.g., Slack webhooks) with placeholders before committing.
* Dashboards and alert rules are preconfigured in `docker/grafana` and `prometheus/`.
