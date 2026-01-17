# Cal Preserving — Google Ads Initiative (Internal)

Internal Intrago repository for Google Ads initiative tooling and implementation guides.

**Client repo:** [cp-mktg-google-ads](https://github.com/intragoinc/cp-mktg-google-ads)

**Client wiki:** [cp-mktg-google-ads/wiki](https://github.com/intragoinc/cp-mktg-google-ads/wiki) — Project overview, scope, and client-facing documentation

---

## Repository Structure

```
/
├── scripts/
│   ├── create-github-project.sh   # Bulk create GitHub issues from plan
│   ├── new-snapshot.sh            # Create snapshot folder in client repo
│   ├── update-latest.sh           # Update latest symlink
│   └── list-snapshots.sh          # List all snapshots with metadata
└── README.md
```

---

## Internal Wiki

Implementation guides and SOPs for Intrago team:

| Guide | Description |
|-------|-------------|
| [Implementation Guide - Phase 0.5](https://github.com/intragoinc/cp-mktg-google-ads-i/wiki/Implementation-Guide-Phase-0.5) | Current launch phase |
| [Implementation Guide - Phase 1](https://github.com/intragoinc/cp-mktg-google-ads-i/wiki/Implementation-Guide-Phase-1) | Bay Area with landing pages |
| [Implementation Guide - Phase 2](https://github.com/intragoinc/cp-mktg-google-ads-i/wiki/Implementation-Guide-Phase-2) | Fringe geography expansion |
| [Implementation Guide - Phase 3](https://github.com/intragoinc/cp-mktg-google-ads-i/wiki/Implementation-Guide-Phase-3) | Residential vs Commercial split |

---

## Scripts

### Snapshot Scripts

Scripts run from this repo but write data to the client repo:

```bash
# Create new snapshot folder
./scripts/new-snapshot.sh 2026-01-17 your-username

# Update latest symlink
./scripts/update-latest.sh

# List all snapshots
./scripts/list-snapshots.sh
```

Then commit data in client repo:
```bash
cd ../cp-mktg-google-ads
git add snapshots/ && git commit -m "Add snapshot" && git push
```

### Project Setup

```bash
# Bulk create GitHub project and issues
./scripts/create-github-project.sh
```

---

## What Lives Where

| Content | Location |
|---------|----------|
| Data files (CSVs, snapshots) | Client repo |
| Issues & Projects | Client repo |
| Implementation guides | Internal wiki (-i) |
| Scripts | Internal repo (-i) |
