[![CI](https://github.com/Amirhossein-Asadzadeh/observability-lab/actions/workflows/ci.yml/badge.svg)](https://github.com/Amirhossein-Asadzadeh/observability-lab/actions/workflows/ci.yml)

# Observability Lab — Prometheus · Alertmanager · Grafana · Node Exporter

A **production-style observability stack** built with Docker Compose to demonstrate metrics collection, alerting, and visualization. This lab is designed as a hands-on portfolio project for DevOps / SRE / Cloud roles.

---

## What this project shows

* How to collect **system and service metrics** with Prometheus
* How to **visualize and explore metrics** using Grafana dashboards
* How to define and route **alerts** with Alertmanager
* How to run a complete monitoring stack locally using Docker

This repository focuses on **clarity, reproducibility, and real-world practices**, not just tool installation.

---

## Stack

* **Prometheus** — metrics collection and storage
* **Alertmanager** — alert routing and grouping
* **Grafana** — dashboards and visualization
* **Node Exporter** — system-level metrics (CPU, memory, disk, network)

---

## Screenshots

![Grafana Dashboard](docs/screenshots/grafana-dashboard.png)

---

## Architecture overview

```
Node Exporter  ──▶  Prometheus  ──▶  Alertmanager
                         │
                      Grafana
```

Prometheus scrapes metrics from Node Exporter, evaluates alert rules, and sends alerts to Alertmanager. Grafana queries Prometheus to visualize metrics.

---

## Requirements

* Docker
* Docker Compose

---

## Run the stack

Start all services in detached mode:

```bash
docker compose up -d
```

Check running containers:

```bash
docker compose ps
```

Stop and remove containers:

```bash
docker compose down
```

---

## Exposed ports

| Service       | Port |
| ------------- | ---- |
| Grafana       | 3000 |
| Prometheus    | 9090 |
| Alertmanager  | 9093 |
| Node Exporter | 9100 |

Grafana default login:

* **Username:** admin
* **Password:** admin (change on first login)

---

## Configuration

* **Prometheus config:** `prometheus/prometheus.yml`
* **Alert rules:** `prometheus/rules/`
* **Alertmanager config:** `alertmanager/alertmanager.yml`
* **Grafana provisioning & dashboards:** `docker/grafana/`

Dashboards and alert rules are **preconfigured and version-controlled** to demonstrate monitoring-as-code.

---

## Alerts (examples)

* Node down
* High CPU usage
* High memory usage

Alert thresholds and routing can be modified in the Prometheus rules and Alertmanager configuration files.

---

## Notes

* Replace any secrets (for example Slack webhooks) with **placeholders** before committing.
* This project is intended for **learning, demos, and portfolio use**, not as a hardened production deployment.

---

## License

MIT
