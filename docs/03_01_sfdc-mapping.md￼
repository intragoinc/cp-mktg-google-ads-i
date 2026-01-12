# 03_01_sfdc-mapping.md
## Salesforce Mapping — Implementation Notes & Interpretation Guide

This document explains how to interpret and implement the canonical Salesforce mapping defined in:

```text
03_01_sfdc-mapping.csv
```

It is written for:

- **LP / Web Developer** (Aksha)
- **Salesforce Admin / Developer** (Ankush)
- **Marketing Ops**
- **Executive** triage visibility

The CSV is the **authoritative spec**. This file answers:

> “What do I do with this, and how does it work as a system?”

---

## 1. System Overview — Two Attribution Domains

The spec intentionally separates attribution into two independent layers:

### 1.1 Paid Attribution Layer (driven by Google Ads / UTMs)

Examples:

| Field         | Description                     |
| ------------- | -------------------------------- |
| `utm_campaign` | What we paid for (campaign concept) |
| `utm_surface` | Surface we bought (deck / siding / structures / pressure / catch-all) |
| `utm_geo`     | Geo label (bay_area / fringe)   |
| `utm_persona` | Buyer type (residential / commercial — Phase 3) |

This layer answers:

> **“What did we buy?”**

It is **not influenced by what the user selects on the form**.  
If the campaign is “Bay Area Deck – Residential”, then paid attribution stays “Deck, Bay Area, Residential” even if the user also ticks “Fence” on the form.

---

### 1.2 Operational Attribution Layer (driven by the form + rules)

Examples:

| Field                           | Description                                        |
| ------------------------------- | -------------------------------------------------- |
| `operational_surface_primary__c` | Which surface the estimator should treat as primary |
| `operational_persona__c`        | Residential vs Commercial (from form property type) |
| `surfaces_multi__c`             | All surfaces the user selected                     |
| `surfaces_count__c`             | How many surfaces were selected                    |

This layer answers:

> **“What did the user actually want done?”**

This is **not influenced by Ads bidding intent**.  
It reflects the project reality, not CPC strategy.

> This separation prevents a common analytics failure mode:  
> campaigns being judged based on user whims instead of what was targeted and paid for.

---

## 2. Phase Compatibility Model

The mapping in `03_01_sfdc-mapping.csv` is designed to work across all campaign rollout phases.

### 2.1 Phase 1 — Bay Area Only / Mixed Persona

- Google Ads targets **Bay Area only**.
- Campaigns are **mixed persona** (Residential + Commercial together).
- `property_type__c` (form) is already collected:
  - `residential`
  - `commercial`
- `utm_persona` may be empty or generic.
- **Paid Persona** (`paid_persona__c`) can remain `null` or generic.
- **Operational Persona** (`operational_persona__c`) is derived from the form and can still be used for estimator context and reporting.

### 2.2 Phase 2 — Bay Area + Fringe / Mixed Persona

- Same form as Phase 1.
- `utm_geo` becomes critical:
  - `bay_area`
  - `fringe`
- Campaign structure is split by geo, but still mixed persona.
- `paid_geo__c` is derived from UTMs/campaign mapping.
- No persona split in campaigns yet; persona is still an operational concept from the form.

### 2.3 Phase 3 — Bay Area + Fringe + Persona Split

- Campaign + LP + Form all use distinct persona patterns:
  - Residential
  - Commercial
- `utm_persona` is expected to be set for Ads traffic:
  - `residential`
  - `commercial`
- **Paid Persona** is derived from UTMs/campaigns.
- **Operational Persona** is still derived from form (`property_type__c`).
- Both personas may be compared for sanity-checking but are allowed to differ.

---

## 3. Key Design Principles

The mapping enforces several major principles.

### 3.1 Principle #1 — Paid Attribution Is Never Overwritten by the User

Example:

- Campaign: “Bay Area Siding – Residential”  
- UTMs: `utm_surface = siding`, `utm_geo = bay_area`
- Form surfaces: Deck + Siding + Furniture

Then we get:

```text
paid_surface_primary__c       = siding     // from UTMs
paid_geo__c                   = bay_area
operational_surface_primary__c = siding    // from rules (Siding outranks Deck)
surfaces_multi__c             = deck; siding; furniture
```

If the user selected more surfaces, **paid_surface_primary__c** still reflects what we *paid* for (Siding). We do **not** overwrite it from form logic.

---

### 3.2 Principle #2 — But Operational Context Is Preserved

Even when paid attribution is locked, the system still captures the full job picture:

```text
surfaces_multi__c  = deck; siding; furniture
surfaces_count__c  = 3
```

Estimators can see multifaceted jobs (e.g., deck + siding + furniture) even though reporting continues to bucket spend under the surface we bid on.

---

### 3.3 Principle #3 — Persona Comes from Two Different Places

| Persona Layer       | Comes From                     | Used For                                  |
| ------------------- | ----------------------------- | ----------------------------------------- |
| **Paid Persona**    | UTM / Campaign naming         | CAC, ROAS, paid performance reporting     |
| **Operational Persona** | Form field (`property_type__c`) | Estimating, routing, and proposals (Phase 3) |

They can diverge and **should not be forced to match**.

Example:

- Paid Persona = `commercial` (campaign targeted HOA / PM)  
- Operational Persona = `residential` (user mis-clicked or is really a homeowner)  

This is allowed and often helpful for diagnosis.

---

### 3.4 Principle #4 — Geo Is Paid-Only, Not Form-Driven

City and Zip are collected for **job-site reality**, not to rewrite paid geo labels.

- `address_city__c` and `address_postal__c` = operational location.
- `utm_geo` (and derived `paid_geo__c`) = how we positioned the campaign.

We do **not** derive geo for Ads performance from City/Zip. Instead, we may **validate** that the job-site zip code is consistent with the intended geo, but we don’t rewrite the paid geo labels.

---

### 3.5 Principle #5 — No Routing Logic Baked into Phase 1 or 2

This mapping is **routing-neutral**:

- Estimator assignment rules (e.g., Residential vs Commercial estimators)
- Regional minimum rules (e.g., higher minimum for Fringe)
- Crew routing rules

…are **not encoded** directly into this file. They can be implemented later as SFDC automation or external logic without having to redo the core data model.

---

### 3.6 Principle #6 — Attribution Works Even Without Advanced SFDC Features

Even if:

- No Opportunities are created, or
- No Campaigns are wired up in SFDC yet, or
- No complex routing is implemented,

…this mapping still ensures:

- Every lead from Ads has **enough metadata** to judge performance.
- You can compare performance by:
  - surface
  - geo
  - persona
  - phase

You get meaningful analytics without being blocked by SFDC project backlog.

---

## 4. Field Ownership & Responsibilities

To keep implementation smooth, each “slice” of the mapping has a clear owner.

| Layer / Task                 | Owner           |
| ---------------------------- | --------------- |
| LP hidden field configuration (`utm_*`) | LP / Web Dev (Aksha) |
| Form layout & fields         | LP / Web Dev (Aksha) |
| SFDC custom fields (Lead/Opportunity) | SFDC Admin / Dev (Ankush) |
| Derived “paid_*” fields      | SFDC Dev        |
| Derived “operational_*” fields | SFDC Dev      |
| Lead Source mapping rules    | Marketing Ops + SFDC Dev |
| Opportunity link / ROI reporting | SFDC Dev + Executive / Ops |

This avoids the “no one knows who should do what” problem.

---

## 5. Reporting Use Cases Enabled

With this mapping, we can build robust reporting without needing new fields later.

### 5.1 Marketing Performance

- **CAC by surface** (from `paid_surface_primary__c`)
- **CAC by geo** (from `paid_geo__c`)
- **CAC by persona** (from `paid_persona__c` once Phase 3 is live)
- **CAC by phase** (from `paid_phase__c`)

### 5.2 Operational Performance

- Average job size by **operational surface primary**
- Lead → Proposal → Won funnel by surface & geo
- Close rate by **operational persona** (Residential vs Commercial)
- Close rate by Bay Area vs Fringe (using job-site zip + paid geo)

### 5.3 Strategic Performance

- Share of commercial mix over time
- Surface mix by region
- Seasonal demand by surface and persona

All of these can be derived using fields in the CSV mapping — no schema redesign.

---

## 6. Optional Future Extensions (Not Required Now)

The current mapping is intentionally conservative. Later, you may add:

- Multi-location job support (e.g., property portfolios)
- Multi-estimator routing logic
- Lead scoring (hot/warm/cold) based on timing + persona + surface
- Automated minimum screening (e.g., Fringe + small decks)
- Cross-sell / upsell signals (e.g., siding + deck combos)
- Offline conversion imports back into Google Ads (via GCLID and revenue fields)

None of these require changing the existing fields; they can be layered on top.

---

## 7. How This Fits With Other Docs

This mapping sits in the middle of the system and connects upstream Ads configuration to downstream reporting.

| Upstream Source / Spec                             | Mapping Layer                  | Downstream Spec / Output                 |
| -------------------------------------------------- | ------------------------------ | ---------------------------------------- |
| `campaign_master_phase1/2/3*.csv` (doc2)           | → `03_01_sfdc-mapping.csv`     | → `03_02_reporting-spec.md`              |
| `estimate_request_form_v1.mdx` (canonical form)    |                                | → SFDC Lead schema + dashboards          |

The overall flow is:

> **Google Ads & Campaign Master → LP & Form → SFDC Lead → Reporting & Decisions**

`03_01_sfdc-mapping.csv` + this `.md` file define the **data contract** that keeps all pieces in sync.

---

## 8. Status & Versioning

This document and its companion CSV are considered:

> **Final, Phase-Stable, and Routing-Neutral**

- Valid for **Phase 1**, **Phase 2**, and **Phase 3** of the Google Ads rollout.
- Future updates should:
  - Preserve existing field names wherever possible.
  - Introduce new fields as additive, not breaking.
  - Be versioned (e.g., `v1.1`, `v1.2`) if major logic changes are introduced.

If changes are required in the future (e.g., new personas, new geos), they should be:

1. Added first to `03_01_sfdc-mapping.csv`  
2. Documented here with a short “Changelog” section

For now, this `v1` is the canonical reference for how SFDC fields relate to:

- UTMs
- Web form fields
- Derived “paid_*” and “operational_*” surfaces/personas
- Reporting downstream.

