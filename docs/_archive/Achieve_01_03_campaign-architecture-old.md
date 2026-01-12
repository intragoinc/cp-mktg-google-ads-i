# Part 3 — Campaign Architecture & Ad Group Structure

## 1. Purpose of Campaign Architecture

The campaign architecture defines how Cal Preserving translates its business model into a Google Ads account structure. It ensures that spending aligns with:

- service profitability
- geography constraints
- buyer behavior
- estimator routing
- crew utilization
- job economics

Good architecture prevents wasted spend, protects estimator bandwidth, and creates a scalable system for future optimization.

The architecture intentionally separates concerns so that Google can optimize efficiently without muddying intents, geographies, or buyer types.

---

## 2. Core Architecture Principles

This initiative uses five core architectural principles:

1. Service-first segmentation
2. Geography-aware routing
3. Intent-based keyword clustering
4. Landing page alignment
5. Negative keyword containment

The result is a structure that is profitable, maintainable, and scalable.

---

## 3. Phase 1 Campaign Set

Phase 1 implements five campaigns across the two routing geos.

Campaigns (Service axis):
- Deck
- Siding
- Fence/Furniture/Exterior Wood
- Pressure (supportive)
- Catch-all (Bay Area Exterior Wood)

Geographic split:
- Bay Area (Core)
- Fringe (Higher Minimums)

Fence/Furniture/Exterior exists only in Bay Area for Phase 1 due to volume economics.

Pressure exists only in Bay Area for Phase 1.

Resulting Phase 1 campaign map:

Bay Area:
- Deck — Bay Area
- Siding — Bay Area
- Fence/Furniture/Exterior Wood — Bay Area
- Pressure — Bay Area
- Catch-all — Bay Area

Fringe:
- Deck — Fringe
- Siding — Fringe
- Catch-all — Fringe

Fence/Furniture/Exterior omitted in Fringe for Phase 1 due to minimum job economics and low intent volume.

---

## 4. Ad Group Philosophy

Ad groups cluster keywords by:

- intent
- surface
- species (if relevant)
- commercial vs residential (later phase)
- geography (handled at campaign level)

Each ad group shares:
- a coherent intent domain
- aligned messaging
- aligned landing page URL(s)

This ensures high Quality Score and efficient RSA learning.

---

## 5. Ad Group Breakdown by Service

### Deck — Bay Area

Ad groups:

- Refinishing
- Restoration
- Staining
- Painting
- Repair
- Maintenance
- Commercial (Phase 2)
- Species (Redwood, Cedar, IPE, Teak, Hardwood)
- Brand (rarely used in residential; commercial may add)
- Surface generic ("deck services", "deck contractor")
- Geographic ("Bay Area", city-level)

### Deck — Fringe

Reduced ad group set:

- Refinishing
- Restoration
- Staining
- Painting
- Commercial (Phase 2)
- Geographic

Species and maintenance clusters are reduced in Fringe until volume clarity.

---

### Siding — Bay Area

Ad groups:

- Refinishing
- Restoration
- Painting
- Repair
- Commercial (Phase 2)
- Species (Redwood, Cedar, IPE, Teak)
- Surface generic ("wood siding contractor", "siding restoration")
- Geographic

### Siding — Fringe

Ad groups:

- Refinishing
- Restoration
- Commercial (Phase 2)
- Geographic

Painting and repair optional for Phase 1 Fringe.

---

### Fence/Furniture/Exterior Wood — Bay Area Only

Ad groups:

- Fence refinishing
- Exterior wood structure refinishing (gazebo, arbor, pergola, trellis)
- Furniture refinishing (Teak/IPE/Redwood)
- Commercial (Phase 2)
- Geographic

This represents low to moderate volume but relevant high-fit queries.

---

### Pressure — Bay Area

Pressure intent is supportive and seasonal:

Ad groups:

- Pressure washing
- Wood furniture cleaning
- Rain-season buyer intent
- Commercial (Phase 2)
- Geographic

This category often produces smaller residential tickets but may generate commercial entry points.

---

### Catch-all — Bay Area and Fringe

Ad groups:

- Exterior wood refinishing
- Exterior wood contractor
- Exterior maintenance
- Exterior painting/staining (non-surface-specific)

This campaign is capped to discovery-level spend to avoid eating core budget.

---

## 6. Match Types and Query Control

Phase 1 uses:

- Phrase match (primary)
- Exact match (reinforced)
- Strong negative sets

Broad match is intentionally excluded for launch due to niche intent, low tolerance for noise, and estimator constraints. Broad may be tested in Phase 3 for commercial scaling.

---

## 7. Geo Structure and Targeting Model

Geography segmentation is implemented at the campaign level, not the ad group level, so that:

- budget can be independently controlled
- minimum thresholds can be enforced
- Fringe can lean commercial
- Bay Area can support residential volume

City-level overlays are optional in Phase 3 for commercial and HOA/PM scaling.

---

## 8. Buyer Segmentation Layer (Future Phases)

Phase 1 deploys mixed buyer intent.

Phase 2 introduces:

Residential:
- homeowner messaging
- residential review proof
- consumer language

Commercial/HOA/PM:
- Board/PM messaging
- licensing and insurance proof
- risk mitigation language
- HOA seasonality (inspection, resurfacing, repainting)

Commercial will not use “near me” pattern. Bay Area-level and city-level intent expected.

---

## 9. Landing Page Mapping

Campaign → LP mapping:

Deck → /deck
Siding → /siding
Fence/Furniture/Exterior → /exterior-wood
Furniture → /furniture
Pressure → /pressure
Catch-all → /exterior-wood-general

This ensures page-message matching and improves Quality Score.

---

## 10. Negative Deployment Model

Negative layers exist at:

Account level:
- DIY
- retail/material
- composite brands

Campaign level:
- service-specific exclusions (e.g., pressure exclusion inside Deck campaign)
- composite exclusions (Trex, Fiberon, Azek, Hardie, LP SmartSide)

Ad group level:
- cross-intent blockers (e.g., repair vs repaint leakage)
- retail/product leakage

This stacking model prevents irrelevant queries without over-blocking.

---

## 11. Budget Routing Logic

Budget allocation follows service weighting:

Bay Area:
- Deck highest weight
- Siding second
- Fence/Furn/Exterior medium
- Pressure supportive
- Catch-all capped

Fringe:
- Deck and Siding limited but high-value
- Catch-all capped
- Fence/Furn/Exterior excluded
- Pressure excluded

Commercial overlays increase in Phase 2/3.

---

## 12. Expansion Path (Phase 2 and 3)

Phase 2 adds:

- Commercial/HOA ad groups
- Pressure seasonal ramp
- Furniture seasonal ramp
- Negative tightening
- Attribution-based pruning

Phase 3 may add:

- city-based campaigns
- broad match commercial testing
- bid automation tuned to job economics

---

## 13. Outcome of Part 3

Part 3 converts segmentation into executable campaigns with:

- clear budget control
- clear routing logic
- clear attribution outputs
- low wasted spend
- high message alignment
- scalability to commercial expansion

Part 4 defines the tracking, UTM, and Salesforce attribution layer that sits beneath this architecture.
