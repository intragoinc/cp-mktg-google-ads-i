# Part 2 — Segmentation & Taxonomy Layer

## 1. Role of Segmentation in This Initiative

Segmentation in this initiative defines the operational geometry of the Google Ads system. It determines how spend, impressions, leads, and booked jobs map to:

- services
- surfaces
- species
- geographies
- job sizes
- buyer types

Profitability varies across:

1. Services (deck, siding, furniture, pressure, etc.)
2. Geographies (Bay Area vs Fringe)
3. Buyers (residential vs commercial/HOA/PM)
4. Seasonality windows
5. Minimum job sizes

Therefore, segmentation is not cosmetic. It is foundational to controlling:

- budget allocation
- lead qualification
- estimator routing
- crew utilization
- opportunity value
- cost per acquisition (CAC)
- revenue predictability

---

## 2. Primary Segmentation: Services

Primary segmentation axis for Phase 1 is service category:

DECK
SIDING
FENCE + FURNITURE + EXTERIOR WOOD STRUCTURES
PRESSURE (SUPPORTIVE)
CATCH-ALL (BAY AREA EXTERIOR WOOD)

Notes:
- Deck and Siding are core revenue drivers.
- Fence/Furniture/Exterior Wood is combined for Phase 1 in Bay Area only.
- Pressure is treated as both a supportive service and seasonal lead magnet.
- Catch-all exists to capture long-tail intent and unspecific queries.
- This is optimized for paid search, not web navigation or sales taxonomy.

---

## 3. Secondary Segmentation: Geography

Two geographic routing zones:

BAY AREA (CORE)
FRINGE (HIGHER MINIMUMS, COMMERCIAL-LEANING)

Operational logic:
- Bay Area receives broader service coverage.
- Fringe receives higher minimums and fewer low-volume clusters.
- Fringe shifts more commercial in Phase 2/3.
- This aligns with travel, routing, and job economics.

---

## 4. Tertiary Segmentation: Buyer Type

Phase 1 runs mixed buyer demand:

Residential + Commercial (mixed)

Rationale:
- Commercial intent volume is lower.
- PM/HOA queries rarely use “near me”.
- Commercial intent value is high.
- Attribution feedback required.

Phase 2 introduces segmentation:

Residential (standard)
Commercial / HOA / PM (specialized)

Phase 3 adds commercial negative keywords (cheap, handyman, DIY, etc.) and full bid controls.

---

## 5. Service Taxonomy: Surfaces and Species

Exterior wood preservation is species-sensitive due to pricing, application, and customer language. Phase 1 taxonomy:

DECK:
- Cedar
- Redwood
- IPE
- Teak
- Hardwood umbrella (unknown species)

SIDING:
- Cedar
- Redwood
- IPE
- Teak
- Hardwood umbrella excluded

FENCE / EXTERIOR WOOD STRUCTURES:
- Cedar
- Redwood
- IPE
- Teak excluded
- Hardwood umbrella excluded

FURNITURE:
- Teak
- IPE
- Redwood
- Cedar excluded
- Hardwood umbrella excluded

PRESSURE:
- Species irrelevant at intent level.

CATCH-ALL:
- Species unspecified.

Species logic impacts keyword patterns, negative strategy, ad copy language, and landing page messaging.

---

## 6. Intent Segmentation: Search Query Clusters

The search universe shows consistent intent clusters for exterior wood:

REFINISHING
RESTORATION
PAINTING / STAINING
REPAIR
MAINTENANCE
CLEANING (pressure)
COMMERCIAL / HOA / PM
BRAND / SPECIES / MATERIAL
SURFACE-SPECIFIC (deck, siding, furniture)
GEOGRAPHIC (Bay Area, city, region)

These clusters allow the system to:
- capture high-fit searches
- avoid retail/product searches
- filter out DIY intent

---

## 7. Negative Taxonomy: Structured, Not Opportunistic

Negative strategy is taxonomy-based, not reactive.

Dimensions:

DIY / HOW-TO:
how to refinish
do it yourself
tutorial
home depot
lowes

RETAIL / MATERIALS:
stain
paint
oil
lumber
decking boards
hardware
kits
prefab

COMPOSITE / SYNTHETICS:
Trex
TimberTech
Azek
Fiberon
Hardie
LP SmartSide

Composite surfaces are refinishing alternatives, not refinishing surfaces.

NON-COMMERCIAL:
moving services
interior design
metal fabrication
non-wood construction

PRICE-SHOPPER (PHASE 2):
cheap
cheapest
discount

This reduces wasted spend and protects estimator bandwidth.

---

## 8. Revenue Alignment: Weighting Model

Service/geography weighting for Phase 1 monthly allocation:

Service | Bay Area | Fringe
------- | -------- | ------
Deck | 35% | 10%
Siding | 20% | 10%
Fence/Furn/Ext | 10% | 0%
Catch-all | 10% | 5%
Pressure | 10% | 0%

Buyer weighting:

Residential 60% / Commercial 40%

Fringe overlay:

Commercial 70% / Residential 30%

These matrices allow intentional scaling vs algorithmic sprawl.

---

## 9. Seasonality Overlay

Two operational seasons:

Peak Season (Dry months):
- Deck + Siding heavy
- Residential heavier
- Catch-all discovery valid

Rain Season:
- Furniture viable
- Pressure viable
- Commercial / HOA viable
- Inspection cycles increase

Paid demand must respect estimator load, crew throughput, and job economics.

---

## 10. Phase 1 Taxonomy Summary Table

Dimension | Taxonomy | Phase
--- | --- | ---
Service | Deck / Siding / Fence+Furn+Ext / Pressure / Catch | P1
Geo | Bay Area / Fringe | P1
Buyer | Mixed (Res + Comm) | P1
Species | Cedar / Redwood / IPE / Teak / Hardwood | P1
Intent | Refinish / Restore / Stain / Paint / Clean | P1
Season | Peak / Rain | P2
Buyer Split | 60% Residential / 40% Commercial | P2
Fringe Mix | 30% Residential / 70% Commercial | P3

---

## 11. Outcome of Part 2

Part 2 defines the segmentation and taxonomy foundation required for:

- campaign structure
- ad group clustering
- keyword generation
- negative keyword sets
- ad copy and RSA messaging
- LP mapping
- Salesforce attribution
- reporting and optimization
- commercial expansion
- seasonality planning

Part 3 defines the campaign architecture built on this taxonomy.
