# 03_02_reporting-spec.md
## Cal Preserving — Google Ads Reporting Specification (v1)

This document defines the **canonical reporting specification** for the Cal Preserving Google Ads initiative.

It is designed to work with:

- Campaign masters (Phase 1–3) in `doc2/`
- Keyword inventory (`FINAL_cal_preserving_consolidated_keywords…csv`)
- Salesforce mapping in `03_01_sfdc-mapping.csv` + `03_01_sfdc-mapping.md`
- Estimate request form spec (`estimate_request_form_v1.mdx`)

This file answers:

> “What dashboards and reports do we need, which fields power them, and how do they evolve across phases?”

---

## 1. Reporting Objectives

The reporting layer must enable Cal Preserving to:

1. **Measure profitability of Google Ads spend**  
   - At the level of **surface**, **geo**, and **persona** (once Phase 3 is live).

2. **Understand lead → job economics**  
   - Cost per lead (CPL)  
   - Cost per opportunity (CPO)  
   - Cost per acquired customer (CAC)  
   - Average job value and gross margin by segment.

3. **Support operational decisions**  
   - Which surfaces to emphasize (Deck vs Siding vs Structures vs Pressure vs Catch-all)  
   - Which geos to prioritize (Bay Area vs Fringe)  
   - When and how to invest more in **Commercial / HOA / PM** work.

4. **Minimize rebuild work**  
   - Reports should be **phase-stable** (Phase 1–3) and driven by the same core field set.

---

## 2. Core Concepts & Canonical Dimensions

The following concepts should be implemented as **dimensions** in SFDC/BI dashboards.  
(Names assume Salesforce custom fields; adjust to your internal naming if needed.)

### 2.1 Paid Attribution Dimensions (from UTMs / Campaign)

These describe **what we bought**.

- `paid_phase__c`
  - Values: `p1`, `p2`, `p3`
  - Source: derived from campaign master (Phase 1/2/3) or date-based rules.
- `paid_surface_primary__c`
  - Values: `deck`, `siding`, `structures`, `pressure`, `catch_all`
  - Source: UTMs or campaign mapping.
- `paid_geo__c`
  - Values: `bay_area`, `fringe`
  - Source: UTMs or campaign mapping.
- `paid_persona__c` (Phase 3+)
  - Values: `residential`, `commercial`
  - Source: UTMs or campaign mapping.
- `paid_campaign_family__c`
  - Example values: `bay_area_deck`, `bay_area_siding`, `fringe_catch_all`, etc.
  - Source: campaign naming conventions.
- `paid_network__c`
  - Values: `search` (initially – future-proofing).

> These fields should *not* be overwritten by form data.

---

### 2.2 Operational Dimensions (from Form + Derived Logic)

These describe **what the user actually wants**.

- `operational_surface_primary__c`
  - Values: `deck`, `siding`, `structures`, `furniture`, `pressure`, `catch_all`
  - Source: logic from estimate request form (see form spec).
- `surfaces_multi__c`
  - Values: semi-colon list, e.g. `deck;siding;furniture`
- `surfaces_count__c`
  - Values: integer (1, 2, 3, …)
- `operational_persona__c`
  - Values: `residential`, `commercial`
  - Source: `property_type__c` on form.
- `property_relationship__c`
  - Values: `owner_landlord`, `tenant`, `property_manager`, `contractor`, `realtor`, `architect`
- `project_timing__c`
  - Values: `asap`, `within_1_month`, `within_3_months`, `just_exploring`
- `address_city__c`, `address_postal__c`, `address_state__c`
  - Used for geographic analysis and sanity checks.

> These fields power estimator context, operational segmentation, and advanced reporting.

---

### 2.3 Funnel Stage Dimensions

These are SFDC object state fields that define position in the funnel.

On **Lead**:

- `lead_status` (standard)
  - Example values: `New`, `Contacted`, `Qualified`, `Unqualified`, `Converted`.
- `lead_source` (standard)
  - Values: `Google Ads`, `Organic Search`, `Referral`, etc.

On **Opportunity** (for converted leads):

- `stage_name` (standard)
  - Example values: `Qualification`, `Proposal`, `Won`, `Lost`.
- `is_won`
  - Boolean: `true`/`false`.
- `is_closed`
  - Boolean: `true`/`false`.

> Existing SFDC fields can be reused where practical; mapping file simply ties them to Ads context.

---

### 2.4 Economic Dimensions

These allow economic reporting by segment.

On **Opportunity** (or custom Job object):

- `amount`
  - Job value (total contract amount).
- `gross_margin__c` (optional in early phases)
  - Estimated or actual margin per job.
- `job_type__c` (if implemented)
  - Mirrors operational surface or more granular internal job classifications.

---

## 3. Core Metrics

These are the metrics that dashboards and decision-making depend on.

### 3.1 Lead & Pipeline Metrics

- **Leads (Count)**  
  - Count of Leads where `lead_source = Google Ads`.

- **Qualified Leads (Count)**  
  - Leads with `lead_status` in qualified statuses (e.g., `Qualified`, `Converted`).

- **Opportunities (Count)**  
  - Opportunities created from Google Ads leads.

- **Proposals Sent (Count)**  
  - Opportunities in stages representing proposal/estimate sent.

- **Jobs Won (Count)**  
  - Opportunities where `is_won = true`.

- **Lead-to-Opportunity Conversion Rate**  
  - `Opportunities / Leads` for Ads-origin leads.

- **Opportunity-to-Won Conversion Rate**  
  - `Won / Opportunities` for Ads-origin opportunities.

- **Lead-to-Won Conversion Rate**  
  - `Won / Leads` for Ads-origin leads.

---

### 3.2 Economic Metrics

- **Total Job Value (Won)**  
  - SUM of `amount` for `is_won = true`.

- **Average Job Value (Won)**  
  - `Total Job Value (Won) / Jobs Won`.

- **Estimated Gross Margin (if available)**  
  - SUM `gross_margin__c` for `is_won = true`.

- **Average Margin % (if available)**  
  - `SUM(gross_margin__c) / SUM(amount)`.

---

### 3.3 Cost & Efficiency Metrics (Requires Ad Spend Data)

Assuming daily or periodic spend is imported from Google Ads or a data warehouse:

- **Spend**
  - SUM of ad spend for filtered segment.

- **Cost per Lead (CPL)**  
  - `Spend / Leads`.

- **Cost per Qualified Lead (CPQL)**  
  - `Spend / Qualified Leads`.

- **Cost per Opportunity (CPO)**  
  - `Spend / Opportunities`.

- **Cost per Won Job (CAC)**  
  - `Spend / Jobs Won`.

- **Return on Ad Spend (ROAS)**  
  - `Total Job Value (Won) / Spend`.

- **Margin-Adjusted ROAS (if available)**  
  - `SUM(gross_margin__c) / Spend`.

---

## 4. Phase-Specific Dashboard Set

This section defines the **minimum viable dashboard set** by phase.  
Implementation can be in SFDC dashboards, a BI tool, or both.

### 4.1 Phase 1 — Bay Area / Mixed Persona

**Dashboard P1-A — Lead & Job Overview (Bay Area Only)**

- **Filters:**
  - `paid_phase__c = p1`
  - `paid_geo__c = bay_area`
  - `lead_source = Google Ads`

- **Dimensions:**
  - `paid_surface_primary__c` (Deck / Siding / Structures / Pressure / Catch-all)
  - `operational_surface_primary__c`
  - `project_timing__c`

- **Metrics:**
  - Leads
  - Jobs Won
  - Total Job Value
  - Average Job Value
  - CPL (if Spend is integrated)
  - CAC (if Spend is integrated)

- **Views (recommended):**
  - Bar chart: Leads by `paid_surface_primary__c`
  - Bar chart: Jobs Won by `operational_surface_primary__c`
  - Table: Surface x Timing band (project_timing__c) with Leads + Jobs Won

---

**Dashboard P1-B — Funnel Conversion (Bay Area Only)**

- **Filters:**
  - `paid_phase__c = p1`
  - `paid_geo__c = bay_area`
  - `lead_source = Google Ads`

- **Dimensions:**
  - `paid_surface_primary__c`

- **Metrics:**
  - Leads
  - Opportunities
  - Jobs Won
  - Lead→Opp Conversion Rate
  - Opp→Won Conversion Rate
  - Lead→Won Conversion Rate

- **Visuals:**
  - Funnel chart by stage
  - Surface-level conversion table

---

### 4.2 Phase 2 — Bay Area + Fringe / Mixed Persona

**Dashboard P2-A — Geo Split Performance (Bay Area vs Fringe)**

- **Filters:**
  - `paid_phase__c IN (p1, p2)`
  - `lead_source = Google Ads`

- **Dimensions:**
  - `paid_geo__c` (bay_area, fringe)
  - `paid_surface_primary__c`

- **Metrics:**
  - Leads
  - Jobs Won
  - Total Job Value
  - Average Job Value
  - CPL, CAC (if Spend is integrated)
  - ROAS

- **Visuals:**
  - Side-by-side comparison: Bay Area vs Fringe (table)
  - Stacked bar: Surface contribution by geo

> This dashboard helps validate whether Fringe jobs justify the extra travel given minimums and larger job bias.

---

### 4.3 Phase 3 — Persona Split (Residential vs Commercial)

**Dashboard P3-A — Residential vs Commercial Mix & Performance**

- **Filters:**
  - `paid_phase__c = p3`
  - `lead_source = Google Ads`

- **Dimensions:**
  - `paid_persona__c` (residential, commercial)
  - `paid_surface_primary__c`
  - `paid_geo__c`

- **Metrics:**
  - Leads
  - Jobs Won
  - Total Job Value
  - Average Job Value
  - CPL, CAC, ROAS

- **Visuals:**
  - Bar: CAC by persona
  - Bar: ROAS by persona
  - Table: Surface x Persona with Leads, Won, CAC, ROAS

---

**Dashboard P3-B — Property Manager / HOA / Facilities View**

- **Filters:**
  - `paid_phase__c = p3`
  - `lead_source = Google Ads`
  - `operational_persona__c = commercial`
  - `property_relationship__c IN (property_manager, contractor, architect, realtor)`

- **Dimensions:**
  - `paid_geo__c`
  - `paid_surface_primary__c`

- **Metrics:**
  - Leads
  - Jobs Won
  - Total Job Value
  - CPL, CAC, ROAS

- **Visuals:**
  - Table view for exec review of “Commercial / PM / HOA footprint”

---

## 5. Core Reports (Tabular)

In addition to dashboards, create the following reusable **tabular reports** (SFDC or BI).

1. **R1 — Lead Detail by Surface & Geo**
   - Filters: `lead_source = Google Ads`
   - Columns: Lead ID, Created Date, paid_surface_primary__c, paid_geo__c, operational_surface_primary__c, surfaces_multi__c, project_timing__c, property_type__c, property_relationship__c

2. **R2 — Opportunity & Job Detail**
   - Filters: Opportunities where originating Lead has `lead_source = Google Ads`
   - Columns: Opp ID, Stage, Is Won, Amount, Gross Margin (if available), paid_surface_primary__c, paid_geo__c, paid_persona__c, operational_surface_primary__c

3. **R3 — Jobs Won Economics by Segment**
   - Grouped by: `paid_surface_primary__c`, `paid_geo__c`, `paid_persona__c`
   - Metrics: Jobs Won, Total Job Value, Average Job Value, Margin (if available)

4. **R4 — Timing Band Analysis**
   - Grouped by: `project_timing__c`, `paid_surface_primary__c`
   - Metrics: Leads, Jobs Won, Lead→Won Conversion Rate

---

## 6. Data Integration Requirements

To fully power these reports, the following integrations are recommended:

1. **Google Ads → Spend Table**
   - Daily spend by campaign/ad group mapped to `paid_campaign_family__c`, `paid_surface_primary__c`, `paid_geo__c`, and `paid_phase__c`.

2. **Salesforce → Data Warehouse / BI**
   - Nightly sync of Leads, Opportunities, and key custom fields.

3. **Form System → Salesforce**
   - All fields in `estimate_request_form_v1.mdx` must map cleanly to SFDC fields as per `03_01_sfdc-mapping.csv`.

---

## 7. Phase Rollout Expectations

- **Phase 1:**
  - Implement P1 dashboards (Overview + Funnel).
  - Implement R1, R2 core reports.

- **Phase 2:**
  - Add P2 Geo Split dashboard.
  - Add Fringe metrics to existing reports.

- **Phase 3:**
  - Add P3 persona dashboards and commercial views.
  - Validate Residential vs Commercial CAC and ROAS.

---

## 8. Governance & Change Management

- Any new fields added for reporting should:
  - Be appended to `03_01_sfdc-mapping.csv`.
  - Be documented in `03_01_sfdc-mapping.md`.
  - Be referenced here in `03_02_reporting-spec.md`.

- Changes that affect **definitions of metrics** (e.g., what counts as “Qualified Lead”) must be:
  - Documented in a short “Definitions” subsection.
  - Communicated to all stakeholders (Aksha, Ankush, Exec).

This file is the **authoritative description** of reports, dashboards, and metrics for the Google Ads initiative and should be kept in sync with the evolving system.
