# Cal Preserving — Google Ads Initiative

A structured, multi-phase Google Ads demand generation system for Cal Preserving, a Bay Area exterior wood preservation and restoration company.

## Overview

This repository contains the complete documentation, campaign architecture, and implementation specs for a phased Google Ads rollout:

- **Phase 1:** Bay Area only, residential-focused campaigns
- **Phase 2:** Bay Area + Fringe geographies
- **Phase 3:** Full Residential vs Commercial persona split

## Quick Links

| Document | Description |
|----------|-------------|
| [Project Summary](./project-summary.md) | High-level overview of the initiative |
| [Project Plan](./project-plan.md) | Implementation plan with time estimates |
| [Project Plan (ClickUp CSV)](./project-plan-clickup.csv) | Task list for import into ClickUp |
| [Project Plan (Trello CSV)](./project-plan-trello.csv) | Task list for import into Trello |
| [Docs Table of Contents](./docs/README.mdx) | Full documentation index |

## Services Covered

- Deck restoration and refinishing
- Wood siding restoration
- Wood structures (fences, arbors, pergolas, gazebos)
- Outdoor furniture (teak, IPE, hardwood)
- Hardscape pressure washing

## Repository Structure

```
/
├── docs/                    # All project documentation
│   ├── 01_xx_*             # Context & orientation
│   ├── 02_xx_*             # Segmentation, creative, landing pages
│   ├── 03_xx_*             # Attribution, Salesforce, reporting, QA
│   ├── 04_xx_*             # SEO alignment
│   ├── campaign-master-*   # Campaign structure CSVs
│   ├── lp-spec-*           # Landing page specifications
│   ├── _archive/           # Superseded documents
│   └── README.mdx          # Documentation table of contents
├── project-summary.md       # Project overview
├── project-plan.md          # Implementation plan with estimates
├── project-plan-clickup.csv # ClickUp import file
└── project-plan-trello.csv  # Trello import file
```

## Team

| Role | Responsibility |
|------|----------------|
| Lead | Oversight, approvals, business decisions |
| Marketing | Google Ads campaigns, keywords, RSAs, optimization |
| Web | Landing pages, forms, tracking |
| Salesforce | Field mapping, UTM capture, reporting |

## Key Documents

### Strategy & Planning
- [Initiative Overview](./docs/initiative-google-ads-phases-1-3.mdx)
- [Executive Context](./docs/01_01_executive-context.mdx)
- [RACI Matrix](./docs/03_05_raci-matrix.md)

### Implementation
- [Campaign Master - Phase 1](./docs/campaign-master-phase-1.csv)
- [LP Spec](./docs/02_17_lp-spec.md)
- [Web-PHP-SFDC Field Contract](./docs/03_04_web-php-sfdc-field-contract.md)

### Quality & Launch
- [QA Matrix](./docs/03_07_qa-matrix.md)
- [Risks & Assumptions](./docs/03_06_risks-assumptions.md)

### Maintenance
- [Style Guide](./docs/STYLE-GUIDE.md)

## Related Repositories

| Repository | Relationship |
|------------|--------------|
| `cp-web` | Landing page implementation |
| `cp-web-analytics` | UTM standards and tracking |
| `cp-sfdc-analytics` | Lead attribution reporting |
| `cp-content` | Ad copy and messaging alignment |
