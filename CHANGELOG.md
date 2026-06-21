# Changelog

All notable changes to this project will be documented in this file.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [0.2.0] - 2026-06-21

### Added
- **R package scaffolding** — `DESCRIPTION`, `NAMESPACE`, `LICENSE` (MIT) establishing this as a valid R package
- **Example function** — `R/hello.R` with a roxygen2-documented `hello()` function as a starting point
- **Unit tests** — `tests/testthat/test-hello.R` using testthat (edition 3)
- **`.Rbuildignore`** — excludes `.github/`, `README.md`, and other non-package files from `R CMD build`
- **CI: R CMD Check** (`.github/workflows/r.yml`) — runs `R CMD check` across Ubuntu, Windows, and macOS against R `release` and `devel`
- **CI: CodeScan** (`.github/workflows/codescan.yml`) — static code analysis via codescan.io, results uploaded as SARIF to GitHub Security tab
- **CI: CodeQL** (`.github/workflows/contrast-scan.yml`) — GitHub-native CodeQL analysis for R, runs on push, PR, and weekly schedule; no external account required
- **CI: Azure Static Web Apps** (`.github/workflows/azure-staticwebapp.yml`) — deploys web app to Azure Static Web Apps on push/PR; closes staging environment on PR close
- **Dependabot** (`.github/dependabot.yml`) — weekly automated updates for GitHub Actions dependencies
- **README** rewrite — setup instructions, directory structure overview, customisation guide, and CI badge

### Changed
- **CI: R CMD Check** — replaced placeholder `blank.yml` (which only echoed "Hello, world!") with a production-ready cross-platform R CMD Check workflow
- **CI: R CMD Check** — updated R versions from `3.6.3`/`4.1.1` to `release`/`devel`; expanded from macOS-only to Ubuntu/Windows/macOS matrix; replaced pinned action SHA with `r-lib/actions@v2`; replaced manual `install.packages` with `r-lib/actions/setup-r-dependencies@v2`
- **CI: CodeScan** — fixed YAML syntax error (unquoted `main` in push trigger); upgraded `actions/checkout@v3` → `@v4`, `actions/cache@v3` → `@v4`, `codeql-action/upload-sarif@v2` → `@v3`
- **CI: Azure Static Web Apps** — upgraded `actions/checkout@v3` → `@v4`; added `main` to push and PR branch triggers

### Removed
- **Contrast Security scan** — replaced with CodeQL; Contrast Scan only supports Java, JavaScript, and .NET — not R

---

## [0.1.0] - 2022-12-20

### Added
- Initial repository setup with GitHub meta-files
- Issue templates (bug report, feature request, custom)
- Pull request template
- `CODEOWNERS` assigning `@mylonas` as global reviewer
- Dependabot for GitHub Actions (daily schedule)
- Workflow stubs: greetings, label, labeler, stale
