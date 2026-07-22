# PrimeHub

Portfolio hub for professional open-source tools spanning infrastructure monitoring, AI agent management, and DevOps automation.

![status](https://img.shields.io/badge/status-active-FFB300?style=flat-square)
![language](https://img.shields.io/badge/html-static-0d0d0c?style=flat-square)
![license](https://img.shields.io/badge/license-MIT-FFB300?style=flat-square)

## Overview

PrimeHub is the central portfolio dashboard for the OneByJorah / JorahOne ecosystem. It provides a live-updating overview of repository health, standardization status, and deployment metrics across the entire J1 infrastructure stack — 29+ tools spanning NOC dashboards, AI agents, network security, and self-hosted services.

## Features

- Real-time repository health scoring with color-coded status indicators
- Interactive Chart.js visualizations (language distribution, health trends)
- Repo cards with descriptions, topics, and deployment status
- Responsive dark-mode design matching the J1 brand palette
- Docker-ready static site (nginx:alpine, <15MB image)
- Auto-syncs with `repositories.json` and `j1.yaml` manifest data

## Architecture / Tech Stack

- **Frontend**: Vanilla HTML/CSS/JS, Chart.js
- **Backend**: Static files served via nginx:alpine
- **Data**: `repositories.json` (repo metadata), `j1.yaml` (operational config)
- **Deployment**: Docker Compose, single-container nginx

## Installation

```bash
git clone https://github.com/OneByJorah/PrimeHub.git
cd PrimeHub

# Option 1: Docker
docker compose up -d --build
# Open http://localhost:8080

# Option 2: Local server
python3 -m http.server 8080
# Open http://localhost:8080
```

## Configuration

| Variable | Default | Description |
|----------|---------|-------------|
| `PORT` | `8080` | Host port for the dashboard |

## License

MIT — see [LICENSE](LICENSE).

---
Part of the JorahOne / J1 ecosystem — portfolio hub for the VIDE OIT infrastructure.
