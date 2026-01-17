# Cal Preserving — Google Ads Initiative

A structured, multi-phase Google Ads demand generation system for Cal Preserving, a Bay Area exterior wood preservation and restoration company.

## Documentation

**All documentation is in the wiki:** [cp-mktg-google-ads Wiki](https://github.com/intragoinc/cp-mktg-google-ads/wiki)

## Quick Links

| Resource | Description |
|----------|-------------|
| [Wiki Home](https://github.com/intragoinc/cp-mktg-google-ads/wiki) | Full documentation index |
| [Phase 0.5 Launch Guide](https://github.com/intragoinc/cp-mktg-google-ads/wiki/Campaign-Master-Phase-0.5) | Current launch configuration |
| [Project Summary](./project-summary.md) | High-level overview |
| [Project Plan](./project-plan.md) | Implementation plan with GitHub issues |

## Phases

- **Phase 0.5:** Simplified launch (1 ad group per campaign) — *Current*
- **Phase 1:** Bay Area only, residential-focused campaigns
- **Phase 2:** Bay Area + Fringe geographies
- **Phase 3:** Full Residential vs Commercial persona split

## Repository Structure

```
/
├── docs/                           # Data files only
│   ├── campaign-master-phase-*.csv # Campaign structure by phase
│   ├── *-mapping.csv               # Field and URL mappings
│   ├── *.json                      # Reporting specs
│   ├── *.html                      # LP wireframes
│   └── prompt-*.md                 # AI prompts
├── project-summary.md              # Project overview
└── project-plan.md                 # Implementation plan
```

## Data Files

| File | Description |
|------|-------------|
| [campaign-master-phase-0.5.csv](./docs/campaign-master-phase-0.5.csv) | Phase 0.5 campaigns (current) |
| [campaign-master-phase-1.csv](./docs/campaign-master-phase-1.csv) | Phase 1 campaigns |
| [campaign-master-phase-2.csv](./docs/campaign-master-phase-2.csv) | Phase 2 campaigns |
| [campaign-master-phase-3.csv](./docs/campaign-master-phase-3.csv) | Phase 3 campaigns |
| [campaign-ad-group-keywords-negatives.csv](./docs/campaign-ad-group-keywords-negatives.csv) | Keywords and negatives |
| [03_01_sfdc-mapping.csv](./docs/03_01_sfdc-mapping.csv) | Salesforce field mapping |
| [03_02_reporting-spec.json](./docs/03_02_reporting-spec.json) | Reporting specification |
| [lp-url-mapping-phase-2.csv](./docs/lp-url-mapping-phase-2.csv) | LP URLs for Phase 2 |
| [lp-url-mapping-phase-3.csv](./docs/lp-url-mapping-phase-3.csv) | LP URLs for Phase 3 |

## Team

| Role | Responsibility |
|------|----------------|
| Lead | Oversight, approvals, business decisions |
| Marketing | Google Ads campaigns, keywords, RSAs, optimization |
| Web | Landing pages, forms, tracking |
| Salesforce | Field mapping, UTM capture, reporting |

## Related Repositories

| Repository | Relationship |
|------------|--------------|
| `cp-web` | Landing page implementation |
| `cp-mktg-web-analytics` | UTM standards and tracking |
| `cp-sfdc-analytics` | Lead attribution reporting |
| `cp-mktg-content` | Ad copy and messaging alignment |
