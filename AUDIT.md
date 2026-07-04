# JorahOne Portfolio — Comprehensive Repository Audit

**Generated:** July 4, 2026
**Total Repositories:** 29
**Total Disk Usage:** ~988 MB

---

## Executive Summary

| Metric | Value |
|--------|-------|
| Total Repositories | 29 |
| Public | 24 |
| Private | 3 (ollama-benchmark-dashboard, arah, agent-mission-control) |
| Forks | 8 (autoresearch, GroundStation, fortress, claude-mcp-osticket, ChronoGuard, age-of-agents-hermes, ghost-os) |
| With LICENSE | 14/29 (48%) |
| With CI/CD | 11/29 (38%) |
| With Tests | 5/29 (17%) |
| With Docker | 15/29 (52%) |
| With .gitignore | 17/29 (59%) |
| With .env.example | 10/29 (34%) |
| With Security Policy | 3/29 (10%) |
| With Contributing Guide | 6/29 (21%) |
| With Changelog | 3/29 (10%) |
| Average Documentation Score | 6.5/10 |

**Portfolio Health Score: 42/100** — Significant room for improvement in standardization, testing, CI/CD, and documentation.

---

## Repository-by-Repository Audit

### 1. hermes-voice
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 70/100 | Best-documented repo in portfolio |
| Purpose | ✅ Self-hosted phone AI assistant (STT → LLM → TTS pipeline) |
| Architecture | ✅ Clean layered architecture with PBX abstraction |
| Dependencies | ✅ Python, FreeSWITCH, Docker, Ollama, faster-whisper, Piper |
| Security | ⚠️ Has .env.example, no secrets in git. Needs SECURITY.md |
| Documentation | ✅ Excellent README with architecture diagram, config table, troubleshooting |
| CI/CD | ✅ GitHub Actions CI present |
| Docker | ✅ docker-compose.yml with profiles |
| Tests | ❌ No test files found |
| License | ✅ MIT |
| Code Quality | ✅ Well-structured Python, clear separation of concerns |
| Key Improvements | Add tests, SECURITY.md, CONTRIBUTING.md |

### 2. StackDeploy
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 65/100 | Comprehensive Docker stack, good documentation |
| Purpose | ✅ Production-ready Docker Compose stack for Hermes agents |
| Architecture | ✅ Well-architected multi-service stack |
| Dependencies | ✅ Docker, PostgreSQL, Redis, SearXNG, Qdrant |
| Security | ⚠️ Missing LICENSE, has .env.example |
| Documentation | ✅ Extensive README (419 lines), architecture diagram |
| CI/CD | ✅ GitHub Actions (ci-cd.yml) |
| Docker | ✅ Multiple compose files with overlays |
| Tests | ✅ Test files present |
| License | ❌ Missing |
| Code Quality | ⚠️ Some duplicated config between StackDeploy and StackDeploy-Dashboard |
| Key Improvements | Add LICENSE, consolidate with StackDeploy-Dashboard, add security policy |

### 3. ChatForge
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 55/100 | Clean Cloudflare Workers project, needs polish |
| Purpose | ✅ Edge-native AI chat app on Cloudflare Workers |
| Architecture | ✅ Clean, minimal TypeScript architecture |
| Dependencies | ✅ Cloudflare Workers, TypeScript |
| Security | ⚠️ Has .gitignore |
| Documentation | ✅ Good README with architecture diagram |
| CI/CD | ❌ No CI/CD |
| Docker | ❌ Not applicable (serverless) |
| Tests | ❌ No tests |
| License | ✅ MIT |
| Code Quality | ✅ Clean TypeScript |
| Key Improvements | Add CI/CD, tests, deployment docs |

### 4. StackDeploy-Dashboard
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 50/100 | Dashboard variant of StackDeploy, needs consolidation |
| Purpose | ✅ Unified dashboard for self-hosted services |
| Architecture | ⚠️ Near-identical to StackDeploy |
| Dependencies | ⚠️ Duplicated from StackDeploy |
| Security | ❌ Missing LICENSE |
| Documentation | ✅ README present but minimal |
| CI/CD | ✅ CI/CD present |
| Docker | ✅ Docker Compose |
| Tests | ✅ Tests present |
| License | ❌ Missing |
| Code Quality | ⚠️ High duplication with StackDeploy |
| Key Improvements | Consolidate with StackDeploy, add LICENSE |

### 5. NetVault
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 55/100 | Solid network backup tool |
| Purpose | ✅ Network backup & asset management dashboard |
| Architecture | ✅ Flask + SQLAlchemy |
| Dependencies | ✅ Python, Flask, SQLAlchemy, rclone, paramiko |
| Security | ⚠️ Has .gitignore |
| Documentation | ✅ Good README with key routes table |
| CI/CD | ✅ GitHub Actions (ci.yml, push.yml, test.yml) |
| Docker | ❌ No Docker |
| Tests | ❌ No tests |
| License | ✅ MIT |
| Code Quality | ✅ Standard Flask structure |
| Key Improvements | Add Docker, tests, security policy |

### 6. SentryView
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 60/100 | Polished NVR dashboard |
| Purpose | ✅ Web-based RTSP NVR dashboard |
| Architecture | ✅ React + FastAPI + FFmpeg |
| Dependencies | ✅ React, FastAPI, FFmpeg, PostgreSQL |
| Security | ⚠️ Has .gitignore, .env.sample |
| Documentation | ✅ Good README |
| CI/CD | ❌ No CI/CD |
| Docker | ✅ Docker Compose with backend Dockerfile |
| Tests | ❌ No tests |
| License | ✅ MIT |
| Code Quality | ✅ Modern stack, clean separation |
| Key Improvements | Add CI/CD, tests, better documentation |

### 7. jorahone-ai-stack
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 50/100 | AI infrastructure aggregator |
| Purpose | ✅ Unified AI infra stack (LLM, search, vector DB) |
| Architecture | ✅ Docker Compose aggregator |
| Dependencies | ✅ LiteLLM, SearXNG, Qdrant, Caddy |
| Security | ⚠️ Has .gitignore, .env.example |
| Documentation | ✅ README with service table |
| CI/CD | ❌ No CI/CD |
| Docker | ✅ Docker Compose |
| Tests | ✅ Tests present |
| License | ❌ Missing |
| Code Quality | ⚠️ Depends on multiple external repos |
| Key Improvements | Add LICENSE, CI/CD, clear documentation |

### 8. msp-dashboard
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 45/100 | MSP operations control plane |
| Purpose | ✅ Self-hosted IT operations dashboard |
| Architecture | ✅ FastAPI + TimescaleDB + Nginx |
| Dependencies | ✅ FastAPI, PostgreSQL, Docker |
| Security | ⚠️ Has .gitignore |
| Documentation | ✅ README present but minimal |
| CI/CD | ❌ No CI/CD |
| Docker | ✅ Docker Compose |
| Tests | ❌ No tests |
| License | ❌ Missing |
| Code Quality | ⚠️ Limited code visible |
| Key Improvements | Add LICENSE, CI/CD, tests, expand README |

### 9. JorahOne (Profile Repo)
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 35/100 | Minimal profile repo |
| Purpose | ✅ GitHub organization profile |
| Architecture | ❌ Just a README |
| Dependencies | ❌ None |
| Security | ❌ No .gitignore |
| Documentation | ⚠️ README with feature list but no real content |
| CI/CD | ❌ None |
| Docker | ❌ None |
| Tests | ❌ None |
| License | ❌ Missing |
| Code Quality | ❌ Empty repo with just a README |
| Key Improvements | Add actual content, profile README, organization docs |

### 10. J1-NOC-Platform
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 62/100 | Flagship project — comprehensive but needs polish |
| Purpose | ✅ Enterprise NOC operations platform |
| Architecture | ✅ React + FastAPI + multiple microservices |
| Dependencies | ✅ Python (large), TypeScript, Docker, Wazuh, Ollama |
| Security | ⚠️ Has .env.example, SECURITY.md |
| Documentation | ✅ Multiple docs, CHANGELOG, CONTRIBUTING, TESTING |
| CI/CD | ✅ GitHub Actions (ci.yml) |
| Docker | ✅ Docker Compose with multiple services |
| Tests | ❌ No tests found |
| License | ❌ Missing MIT license (despite saying so in README) |
| Code Quality | ⚠️ Large codebase (104MB), includes compiled C/C++ artifacts |
| Key Improvements | Add LICENSE file, tests, remove compiled artifacts from repo, refactor large codebase |

### 11. J1-NOC-Nexus
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 55/100 | Unified NOC with Telegram bot |
| Purpose | ✅ NOC with Telegram bot, SNMP discovery |
| Architecture | ✅ Flask + FastAPI hybrid |
| Dependencies | ✅ Python, Flask, FastAPI, python-telegram-bot |
| Security | ❌ No .env.example, no gitignore |
| Documentation | ✅ Good README |
| CI/CD | ❌ No CI/CD |
| Docker | ✅ Docker Compose + Dockerfile |
| Tests | ✅ Tests present |
| License | ❌ Missing |
| Code Quality | ⚠️ Flask + FastAPI hybrid is unusual |
| Key Improvements | Add LICENSE, CI/CD, standardize on one framework |

### 12. J1-MSP-Toolkit
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 35/100 | Minimal PowerShell toolkit |
| Purpose | ✅ Windows 10/11 provisioning & debloat |
| Architecture | ❌ Single PowerShell script |
| Dependencies | ✅ PowerShell |
| Security | ❌ No .gitignore |
| Documentation | ✅ README with steps table |
| CI/CD | ❌ None |
| Docker | ❌ Not applicable |
| Tests | ❌ None |
| License | ❌ Missing |
| Code Quality | ✅ Simple, focused single-purpose tool |
| Key Improvements | Add LICENSE, CI/CD (PowerShell testing), expand functionality |

### 13. hermes-3d-office
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 55/100 | Creative 3D visualization project |
| Purpose | ✅ 3D virtual office for Hermes agents |
| Architecture | ✅ Python/Flask + Three.js frontend |
| Dependencies | ✅ Python, Flask, Three.js, Docker |
| Security | ⚠️ Has .gitignore, .env.example |
| Documentation | ✅ Good README |
| CI/CD | ❌ No CI/CD |
| Docker | ✅ Docker + docker-compose |
| Tests | ❌ No tests |
| License | ❌ Missing |
| Code Quality | ✅ Clean separation, well-documented structure |
| Key Improvements | Add LICENSE, CI/CD, tests |

### 14. EdgeRouter (PiRouter Pro)
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 50/100 | Solid Raspberry Pi router dashboard |
| Purpose | ✅ Raspberry Pi router dashboard & management |
| Architecture | ✅ Flask + SQLite |
| Dependencies | ✅ Python, Flask, SQLite, speedtest-cli |
| Security | ❌ No .gitignore |
| Documentation | ✅ Good README with API table |
| CI/CD | ❌ None |
| Docker | ❌ None |
| Tests | ❌ None |
| License | ✅ MIT (Other license noted) |
| Code Quality | ✅ Standard Flask structure |
| Key Improvements | Add Docker, CI/CD, tests, .gitignore |

### 15. it-training-system
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 50/100 | Training management platform |
| Purpose | ✅ IT training management with AI quizzes |
| Architecture | ✅ FastAPI + PostgreSQL + Qdrant |
| Dependencies | ✅ Python, FastAPI, Qdrant, MinIO, Ollama |
| Security | ⚠️ Has .gitignore, no .env.example visible |
| Documentation | ✅ Good README |
| CI/CD | ✅ GitHub Actions (ci.yml) |
| Docker | ✅ Docker Compose |
| Tests | ❌ No tests |
| License | ✅ MIT |
| Code Quality | ✅ Clean structure |
| Key Improvements | Add tests, environment template, expand documentation |

### 16. CostForge
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 45/100 | Cloud cost estimation dashboard |
| Purpose | ✅ Self-hosted cloud cost estimation |
| Architecture | ✅ FastAPI + SPA frontend + SQLite |
| Dependencies | ✅ Python, FastAPI, SQLite, Nginx |
| Security | ❌ No .gitignore, no .env.example |
| Documentation | ⚠️ Minimal README (64 lines) |
| CI/CD | ❌ None |
| Docker | ✅ Docker Compose + Nginx |
| Tests | ❌ None |
| License | ❌ Missing |
| Code Quality | ⚠️ Large binary/artifacts (62MB) |
| Key Improvements | Add LICENSE, CI/CD, tests, .gitignore, clean up artifacts |

### 17. ADSentinel
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 45/100 | Active Directory monitoring |
| Purpose | ✅ AD Domain Controller monitoring |
| Architecture | ✅ Flask + PowerShell collectors |
| Dependencies | ✅ Python, Flask, PowerShell |
| Security | ❌ No .gitignore |
| Documentation | ✅ Good README with API table |
| CI/CD | ❌ None |
| Docker | ❌ Not Dockerized |
| Tests | ❌ None |
| License | ✅ MIT |
| Code Quality | ✅ Simple, focused |
| Key Improvements | Add Docker, CI/CD, tests, .gitignore |

### 18. CommandDesk
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 58/100 | AI helpdesk agent |
| Purpose | ✅ Self-hosted AI helpdesk |
| Architecture | ✅ Multi-platform ticketing with adapters |
| Dependencies | ✅ Python, FastAPI, ChromaDB, Docker |
| Security | ✅ Has .env.example, .gitignore |
| Documentation | ✅ Good README, CI/CD present |
| CI/CD | ✅ GitHub Actions (ci.yml) |
| Docker | ✅ Multiple Dockerfiles + compose configs |
| Tests | ❌ No tests |
| License | ❌ Missing |
| Code Quality | ✅ Well-structured with adapter pattern |
| Key Improvements | Add LICENSE, tests, security policy |

### 19. EdgeGateway
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 40/100 | Raspberry Pi WARP gateway |
| Purpose | ✅ Cloudflare WARP gateway for Raspberry Pi |
| Architecture | ✅ Two-step bash provisioning |
| Dependencies | ✅ Shell scripts, Cloudflare WARP |
| Security | ❌ No .gitignore |
| Documentation | ✅ README present |
| CI/CD | ❌ None |
| Docker | ❌ None |
| Tests | ❌ None |
| License | ❌ Missing |
| Code Quality | ⚠️ Simple bash scripts |
| Key Improvements | Add LICENSE, CI/CD, test scripts, .gitignore |

### 20. ollama-benchmark-dashboard
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 65/100 | Well-documented benchmarking tool — private repo |
| Purpose | ✅ LLM benchmarking platform for Ollama |
| Architecture | ✅ Clean modular Python, SQLite, Chart.js |
| Dependencies | ✅ Python stdlib, Ollama API, Chart.js CDN |
| Security | ❌ No .gitignore, no .env.example |
| Documentation | ✅ Excellent README (307 lines) with architecture, API, scoring |
| CI/CD | ❌ None |
| Docker | ❌ None |
| Tests | ❌ None |
| License | ❌ Missing |
| Code Quality | ✅ Clean modular architecture, 13 test categories |
| Key Improvements | Add LICENSE, .gitignore, tests, CI/CD |

### 21. autoresearch (Fork)
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 55/100 | AI research automation (fork of karpathy/autoresearch) |
| Purpose | ✅ Autonomous AI research agent |
| Architecture | ✅ Single-file training + agent program |
| Dependencies | ✅ Python, PyTorch, uv |
| Security | ⚠️ Has .gitignore |
| Documentation | ✅ Good README with design choices explained |
| CI/CD | ❌ None |
| Docker | ❌ Not applicable |
| Tests | ❌ None |
| License | ❌ Missing (upstream is MIT) |
| Code Quality | ✅ Clean, minimal, well-documented code |
| Key Improvements | Align with upstream, add CI/CD |

### 22. GroundStation (Fork)
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 45/100 | Large satellite ground station suite (fork) |
| Purpose | ✅ Satellite telemetry & SDR ground station |
| Architecture | ✅ FastAPI + React + WebRTC |
| Dependencies | ✅ Python, FastAPI, React, SDR, Docker |
| Security | ⚠️ Has .gitignore, .pre-commit-config |
| Documentation | ✅ README with architecture |
| CI/CD | ✅ Multiple CI configs (partially disabled) |
| Docker | ✅ Dockerfile, Drone CI |
| Tests | ❌ No tests found |
| License | ✅ GPL-3.0 |
| Code Quality | ⚠️ Very large codebase (637MB), includes binaries |
| Key Improvements | Reduce repo size, align with upstream, enable CI |

### 23. arah (Private)
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 50/100 | Hermes stack deployment |
| Purpose | ✅ Full auto-setup Hermes stack |
| Architecture | ✅ Multi-service Docker Compose |
| Dependencies | ✅ Python, JS, Docker, Honcho, CostForge |
| Security | ❌ No .gitignore, no .env.example |
| Documentation | ✅ Extensive README (437 lines) |
| CI/CD | ❌ None |
| Docker | ✅ Multiple compose files |
| Tests | ✅ Tests present |
| License | ❌ Missing |
| Code Quality | ⚠️ Duplicates StackDeploy code |
| Key Improvements | Consolidate with StackDeploy, add security files |

### 24. agent-mission-control (Private)
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 30/100 | Agent operations dashboard |
| Purpose | ✅ Hermes Mission Control dashboard |
| Architecture | ✅ JS/HTML frontend + Python backend + SQLite |
| Dependencies | ✅ Python, JavaScript, SQLite |
| Security | ❌ No .gitignore |
| Documentation | ❌ No README.md |
| CI/CD | ❌ None |
| Docker | ❌ None |
| Tests | ✅ Has test files |
| License | ❌ Missing |
| Code Quality | ⚠️ Large single-file JS, needs refactoring |
| Key Improvements | Add README, break up large files, add security |

### 25. fortress (Fork)
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 72/100 | Best-maintained repo in portfolio — but a fork |
| Purpose | ✅ Stealth Chromium engine |
| Architecture | ✅ C++ Chromium patches + SDK wrappers |
| Dependencies | ✅ Chromium, Python, Node.js, Docker |
| Security | ✅ Has SECURITY.md, .gitignore, pre-commit |
| Documentation | ✅ Excellent README (499 lines) with full docs |
| CI/CD | ✅ GitHub Actions, releases |
| Docker | ✅ Docker Hub publishing |
| Tests | ✅ Gauntlet test suite |
| License | ✅ BSD-3-Clause |
| Code Quality | ✅ Professional-grade, well-maintained |
| Key Improvements | Add CODE_OF_CONDUCT, CHANGELOG |

### 26. claude-mcp-osticket (Fork)
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 60/100 | Well-maintained MCP server fork |
| Purpose | ✅ MCP server for osTicket integration |
| Architecture | ✅ TypeScript MCP server |
| Dependencies | ✅ Node.js, TypeScript, MCP SDK |
| Security | ✅ Has .env.example, .gitignore |
| Documentation | ✅ README + CHANGELOG + CONTRIBUTING |
| CI/CD | ✅ GitHub Actions (ci.yml) |
| Docker | ❌ Not applicable |
| Tests | ❌ No tests |
| License | ✅ MIT |
| Code Quality | ✅ Clean TypeScript |
| Key Improvements | Add tests, CODE_OF_CONDUCT |

### 27. ChronoGuard (Fork)
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 45/100 | NTP monitoring dashboard (fork) |
| Purpose | ✅ Chrony NTP client monitoring |
| Architecture | ✅ Flask + chronyc CLI |
| Dependencies | ✅ Python, Flask, chrony |
| Security | ❌ No .gitignore |
| Documentation | ✅ Good README |
| CI/CD | ❌ None |
| Docker | ❌ None |
| Tests | ❌ None |
| License | ✅ MIT |
| Code Quality | ✅ Simple, focused |
| Key Improvements | Add .gitignore, CI/CD, tests, Docker |

### 28. age-of-agents-hermes (Fork)
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 65/100 | Well-maintained pixel-art agent visualizer (fork) |
| Purpose | ✅ Visualize AI coding sessions as pixel-art realm |
| Architecture | ✅ Node monorepo: Fastify + React + PixiJS + WebSocket |
| Dependencies | ✅ Node.js, TypeScript, React, PixiJS, Fastify |
| Security | ✅ Has .gitignore, detailed privacy/security docs |
| Documentation | ✅ Excellent README (197 lines) |
| CI/CD | ✅ GitHub Actions (publish.yml) |
| Docker | ✅ Docker Compose |
| Tests | ❌ npm test exists but no test files found locally |
| License | ✅ MIT License (custom art license) |
| Code Quality | ✅ Professional monorepo structure |
| Key Improvements | Add tests, CODE_OF_CONDUCT, align with upstream |

### 29. ghost-os (Fork)
| Category | Score | Notes |
|----------|-------|-------|
| **Overall** | 65/100 | Well-maintained macOS computer-use tool (fork) |
| Purpose | ✅ AI agent computer-use for macOS |
| Architecture | ✅ Swift MCP server + Python vision sidecar |
| Dependencies | ✅ Swift, Python, ShowUI-2B |
| Security | ✅ Has .gitignore |
| Documentation | ✅ Excellent README (293 lines) + multiple docs |
| CI/CD | ❌ None (Swift project) |
| Docker | ❌ Not applicable |
| Tests | ✅ Swift tests present |
| License | ✅ MIT |
| Code Quality | ✅ Professional Swift codebase |
| Key Improvements | Add CI/CD for Swift, CODE_OF_CONDUCT |

---

## Portfolio Summary

### Quality Distribution
```
Excellent (70-100):   fortress (72), hermes-voice (70)
Good (60-69):        age-of-agents-hermes (65), ollama-benchmark-dashboard (65), 
                     ghost-os (65), J1-NOC-Platform (62), claude-mcp-osticket (60), SentryView (60)
Fair (50-59):        StackDeploy (65), StackDeploy-Dashboard (50), ChatForge (55), 
                     NetVault (55), jorahone-ai-stack (50), J1-NOC-Nexus (55), 
                     hermes-3d-office (55), autoresearch (55), arah (50), 
                     EdgeRouter (50), it-training-system (50), CommandDesk (58), CostForge (45)
Needs Work (30-49):  msp-dashboard (45), JorahOne (35), J1-MSP-Toolkit (35),
                     ADSentinel (45), EdgeGateway (40), GroundStation (45),
                     ChronoGuard (45), agent-mission-control (30)
```

### Critical Issues to Address

1. **Missing Licenses** — 15/29 repos need LICENSE files
2. **No CI/CD** — 18/29 repos lack automated testing/deployment
3. **No Tests** — 24/29 repos have no test suite
4. **Missing .gitignore** — 12/29 repos expose temp/build files
5. **No Security Policy** — 26/29 repos lack SECURITY.md
6. **Duplicated Code** — StackDeploy, StackDeploy-Dashboard, and arah share significant overlap
7. **Large Binaries** — J1-NOC-Platform (104MB), GroundStation (637MB) include compiled artifacts
8. **Fork Maintenance** — 8 forks need upstream alignment

### Recommended Actions (Priority Order)

1. **Add LICENSE files** to all repos (MIT consistent with author's preference)
2. **Add .gitignore** to all repos
3. **Create CI/CD pipelines** for all repos
4. **Add basic test suites** to all repos
5. **Consolidate StackDeploy variants** into fewer repos
6. **Add standard GitHub files**: SECURITY.md, CONTRIBUTING.md, CODE_OF_CONDUCT.md
7. **Clean up large artifacts** from repo histories
8. **Align forks with upstream** branches

---

*Audit generated by Codebuff AI — Phase 2 of 14 complete*
