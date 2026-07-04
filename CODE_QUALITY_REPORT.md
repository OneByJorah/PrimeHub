
# CODE QUALITY REPORT
> JorahOne Portfolio — Ruff Analysis
> Generated: July 4, 2026

## Summary

- **Total issues found:** 15,972
- **Auto-fixable:** 7,416 (using `ruff check --fix`)
- **Issue types detected:** 225

> Note: Per-repo breakdown requires additional parsing; overall issue counts below are accurate across all repos.

## By Issue Type


## By Issue Type

| Code | Count | Description |
|------|-------|-------------|
| Q000 | 3,003 | Single quotes instead of double quotes |
| COM812 | 1,478 | Missing trailing comma |
| G004 | 1,206 | Logging statement uses f-string |
| BLE001 | 905 | Do not catch blind exception |
| UP006 | 817 | Use `dict` instead of `Dict` for type annotation |
| S101 | 792 | Use of `assert` detected |
| UP045 | 526 | Use `X | None` for type annotations |
| PLR2004 | 510 | Magic number in comparison |
| D413 | 447 | Missing blank line after last section |
| TRY400 | 283 | Use `logging.exception` instead of `logging.error` |
| I001 | 221 | Import block is un-sorted or un-formatted |
| UP035 | 210 | Deprecated import |
| TRY003 | 208 | Avoid specifying long messages outside exception class |
| T201 | 208 | `print` found |
| TRY300 | 204 | Too many `try` statements |
| ARG001 | 195 | Unused function argument |
| S110 | 176 | `except` without `raise` |
| UP007 | 174 | Use `X | Y` for type annotations |
| PTH123 | 165 | Use `Path.open()` instead of `open()` |
| PTH118 | 162 | Use `Path()` instead of string path |
| C901 | 156 |  |
| PLC0415 | 155 |  |
| EM102 | 143 |  |
| F401 | 129 |  |
| RUF010 | 122 |  |


## Top Action Items

### 1. Auto-fix: Q000 — 3,003 single-quote violations
```bash
ruff check --fix --select Q000 .
```

### 2. Auto-fix: COM812 — 1,478 missing trailing commas
```bash
ruff check --fix --select COM812 .
```

### 3. Auto-fix: I001 — 221 unsorted imports
```bash
ruff check --fix --select I001 .
```

### 4. High-severity: BLE001 — 905 blind except clauses
Replace bare `except:` with `except SpecificException:` throughout.

### 5. Security: S101 — 792 assert statements
Replace `assert` with proper validation in production code.

### 6. Logging: G004 — 1,206 f-string in logging
Replace `logging.info(f"...")` with `logging.info("...", arg)`.

### 7. Magic Numbers: PLR2004 — 510
Replace inline literals with named constants.

---

*Report generated with ruff ruff 0.15.20*
