<div align="center">
  <img src="https://img.shields.io/badge/Python-3.10+-3776AB?style=for-the-badge&logo=python&logoColor=white">
  <img src="https://img.shields.io/badge/Flask-000?style=for-the-badge&logo=flask&logoColor=white">
  <img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black">
  <img src="https://img.shields.io/badge/systemd-000?style=for-the-badge&logo=systemd&logoColor=white">
</div>

<br>

<div align="center">
  <h1>🚀 JorahOne</h1>
  <p><strong>Personal Operations & Infrastructure Hub</strong></p>
  <p>Extensible operational dashboard and monitoring hub for infrastructure automation workflows</p>
  <p>
    <a href="#-features">Features</a> •
    <a href="#-architecture">Architecture</a> •
    <a href="#-deployment">Deployment</a>
  </p>
</div>

---

## ✨ Features

- **Operational Dashboard** — Centralized hub for all infrastructure operations
- **Extensible Architecture** — Service-based design with processing modules
- **Dark Themed UI** — Professional, easy-on-the-eyes interface
- **Data Export** — Results and report export capabilities
- **systemd Managed** — Runs as a production service
- **Environment-Based Config** — Secure configuration via .env files

## 🏗️ Architecture

```
JorahOne/
├── Client ──→ Local Services ──→ Processing Modules
└── Results & Reports
```

## 🚀 Deployment

### Prerequisites
- Ubuntu 22.04+
- Python 3.10+

### Installation

```bash
git clone https://github.com/OneByJorah/JorahOne.git
cd JorahOne
# Configure environment
cp .env.example .env
# Edit .env with your configuration
# Run as systemd service
```

```ini
[Unit]
Description=JorahOne Operations Hub
After=network.target

[Service]
Type=simple
WorkingDirectory=/opt/jorahone
ExecStart=/usr/bin/python3 main.py
Restart=always
EnvironmentFile=/opt/jorahone/.env

[Install]
WantedBy=multi-user.target
```

## 📄 License

MIT © Jhonattan L. Jimenez

---

<div align="center">
  <p>🖥️ Your infrastructure, one dashboard</p>
  <p><a href="https://github.com/OneByJorah">@OneByJorah</a></p>
</div>
