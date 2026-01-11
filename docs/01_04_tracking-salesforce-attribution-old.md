# Part 4 — Tracking, UTM, Salesforce & Attribution Layer

## 1. Purpose of the Attribution Layer

The attribution layer links paid media spend to real commercial outcomes. For Cal Preserving, the objective is not to maximize lead volume, but to optimize for:

- booked revenue
- job size
- job profitability
- estimator efficiency
- crew utilization
- routing costs
- commercial vs residential mix
- seasonal balancing

Salesforce is the system of record for these outcomes; therefore Google Ads tracking must integrate cleanly into Salesforce, not operate as an isolated reporting silo.

---

## 2. Conversion Events

Primary conversion for Phase 1:

Form Submission (Web)

Rationale:
- RFQ procurement is rare in residential
- Commercial uses direct inquiry vs formal bid portal
- Form submissions produce structured data for Salesforce
- Phone calls are captured secondary via manual “lead source” questioning

Secondary conversions (optional in Phase 2):
- Phone call tracking
- Chat widget
- SMS capture (if implemented)

Call-only is not primary due to heterogeneity in buyer style and attribution difficulty.

---

## 3. Form and Landing Page System

Landing pages must:

- collect structured data
- map cleanly into Salesforce fields
- include UTM fields (hidden)
- support species and surface intent
- include zipcode for routing
- support service selection
- allow salesperson to tag commercial vs residential manually if ambiguous

LPs include:
- Deck
- Siding
- Fence/Exterior Wood Structures
- Furniture
- Pressure
- Catch-all

Each LP includes form + cross-links to other services.

---

## 4. UTM Strategy

UTMs are required for job-level match-back and service-type attribution. Phase 1 UTM structure:

utm_source = google
utm_medium = cpc
utm_campaign = {service_geo}
utm_term = {keyword}
utm_content = {ad_group_variant}
utm_service = {service}
utm_geo = {bay-area|fringe}
utm_surface = {deck|siding|fence|furniture|exterior|pressure|catchall}
utm_buyer = mixed (res+comm for phase 1)

Examples:

utm_campaign = deck-bay-area
utm_service = deck
utm_geo = bay-area
utm_surface = deck

For Fringe:

utm_campaign = siding-fringe
utm_service = siding
utm_geo = fringe
utm_surface = siding

These fields flow into Salesforce through Attributer.io.

---

## 5. Salesforce Field Mapping

Salesforce must capture:

- Service requested
- Surface type
- Species (optional Phase 2)
- Buyer type (residential vs commercial vs HOA/PM)
- Zip code
- Close rate
- Job size
- Job minimum compliance
- Region (Bay Area vs Fringe)
- Campaign concept (from UTM)
- Lead source detail (Google Ads / LP / etc.)

This mapping enables downstream filtering by:

- profitability
- geography
- seasonality
- buyer type
- surface type

---

## 6. Service Classification Logic

Salesforce classification pipeline:

Step 1: Attributer.io parses UTM → populates service + campaign info
Step 2: Form submission populates surface + zipcode + address
Step 3: Sales team assigns buyer type (Phase 1)
Step 4: Job creation assigns closing data
Step 5: Revenue data updates post-booking

Phase 2 automates buyer type detection from ad group.

---

## 7. Geographic Routing Logic

Phase 1 routing uses zipcode mapping:

Bay Area = core routing zone
Fringe = outlying routing zone with higher minimums

Fringe may be weighted Commercial-heavy (Phase 2: 70/30 commercial/residential).

Zipcode must be collected at the LP stage to avoid estimator waste.

---

## 8. Minimum Job Filter Logic

Minimum job thresholds:

Bay Area:
- lower minimum due to travel/time economics
Fringe:
- higher minimum due to travel/time economics

Filtering is done at LP stage, not ad stage to avoid over-blocking impressions.

---

## 9. Attribution Model

For optimization:

Phase 1:
- last-touch within Google Ads for CPL reporting
- match-back within Salesforce for job economics

Phase 2:
- data-informed allocation based on revenue / close rate / job size

Primary KPIs are:

Revenue KPIs:
- Close rate
- Average job size
- Average margin
- Revenue per lead
- Revenue per campaign
- Job size distribution

Operational KPIs:
- Estimator load
- Crew utilization
- Routing efficiency
- Seasonality smoothing

Marketing KPIs:
- CPL (lead)
- CAC (customer)
- CTR
- Impression share
- Quality score

Revenue KPIs dominate CAC and CPL for strategic scaling.

---

## 10. Reporting Framework

Salesforce/CRM reporting cuts required:

By Service:
Deck, Siding, Fence/Furniture/Exterior, Pressure, Catch-all

By Geo:
Bay Area vs Fringe

By Buyer:
Residential vs Commercial vs HOA/PM

By Season:
Peak vs Rain

By Minimum Compliance:
Met vs Failed Minimum

By Revenue Outcome:
Low, Medium, High ticket bands

Ticket bands proposed Phase 1:
- Low: under minimum
- Medium: meets minimum
- High: exceeds minimum

---

## 11. Commercial Cohort Handling

Commercial cohort may exhibit:

- higher ticket values
- longer cycles
- more predictable repeat/maintenance
- property portfolio multi-job refresh cycles

Commercial attribution is essential for Phase 2 scaling and determines whether to spin out:

Commercial-Only Campaigns (Phase 3).

---

## 12. Expansion Path for Attribution

Phase 2 attribution enhancements:

- Auto buyer classification
- Call tracking
- Commercial vs Residential campaign split
- Seasonality metrics
- Close rate per service/geo/buyer
- Job size per service/geo/buyer
- Revenue per click

Phase 3 adds:

- ROAS models
- Smart bidding with revenue signals

---

## 13. Outcome of Part 4

Part 4 defines the tracking and attribution layer required to evaluate Google Ads based on real business outcomes. It ensures that Cal Preserving can scale profitable services and geographies while avoiding unprofitable routing and low-ticket noise.

Part 5 defines execution, SOW, and project plan for system deployment.
