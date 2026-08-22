<div align="center">

![PrimeHub banner](docs/assets/banner.svg)

# PrimeHub

Portfolio hub for OneByJorah infrastructure

![License](https://img.shields.io/badge/license-MIT-brightgreen)
![Language](https://img.shields.io/badge/language-HTML-blue)
</div>

---

<p align="center">
  <img src="docs/screenshots/dashboard_desktop.png" alt="PrimeHub preview" width="90%">
</p>

<br>

---

## Features

- **Ecosystem Overview** — Visual dashboard of all JorahOne repositories.
- **Health Scores** — Per-repo score, grade, and health bar at a glance.
- **Standardization Tracking** — License, Docker, CI/CD, and test status per repo.
- **Score Distribution & Language Breakdown** — Chart.js visualizations.
- **Lightweight** — Pure HTML/CSS/JS, no build tools required.
- **Static Snapshot Data** — No backend or live API calls; data mirrors the `repositories.json` audit export.

## Quick Start

```bash
git clone https://github.com/OneByJorah/PrimeHub.git
cd PrimeHub

python3 -m http.server 8080
# Or
npx serve .
```

Open **http://localhost:8080/dashboard.html** in your browser.

## Data Source

The dashboard is a self-contained static page. Repository data is a snapshot maintained in `repositories.json` (GitHub API metadata export for the org) and mirrored inline in `dashboard.html`. To refresh, re-export the org metadata and update both. No tokens or runtime environment variables are required — see [.env.example](.env.example).

## Architecture

```
GitHub API ──export──▶ repositories.json ──snapshot──▶ dashboard.html ──▶ Browser
                                                          │
                                                          ├── Stat cards
                                                          ├── Chart.js charts
                                                          └── Repo card grid
```

## Project Structure

```
PrimeHub/
├── dashboard.html         # Main dashboard (self-contained HTML/CSS/JS)
├── repositories.json      # GitHub API metadata snapshot (29 repos)
├── AUDIT.md               # Portfolio-wide repository audit
├── docs/
│   ├── assets/            # Banner + screenshots
│   └── screenshots/       # Dashboard captures
├── docker-compose.yml     # Optional nginx container deploy
├── Dockerfile             # Static nginx image
└── README.md
```

## Dashboard Sections

| Section | Description |
|---------|-------------|
| **Stats** | Total repos, CI/CD coverage, tests, Dockerized, documented, licensed |
| **Score Distribution** | Repos per grade band (A–F) |
| **Language Breakdown** | Primary-language distribution |
| **Repo Cards** | Score, grade, tags, audit links, GitHub links |

## Contributing

Contributions are welcome. Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines and [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) for community standards.

## Security

Found a vulnerability? Please follow our [Security Policy](SECURITY.md) and report privately to `security@jorahone.com` — do not open a public issue.

## License

[MIT License](LICENSE) © Jhonattan L. Jimenez (OneByJorah)

---

<p align="center">Built with 🌴 by <a href="https://github.com/OneByJorah">OneByJorah</a> · <a href="https://jorahone.com">jorahone.com</a></p>
