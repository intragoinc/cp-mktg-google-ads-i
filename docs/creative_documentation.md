# Cal Preserving – RSA Creative Documentation (Phase 1)

## Overview

This document explains how the RSA creative inventory for Cal Preserving was structured for Phase 1 of the Google Ads rollout.

The goal is to support a $3,500/month budget while:
- Prioritizing high-value exterior wood refinishing and repair work
- Supporting both Residential and PM/HOA/Commercial buyers
- Keeping campaigns simple enough for budget and learning
- Making species (Redwood, Cedar, IPE, Teak) a strategic differentiator

## Surfaces

1. Deck
2. Siding
3. Exterior Wood + Furniture
4. Pressure Washing

Each has its own campaign in Google Ads (Bay Area only for Phase 1).

## Intent Buckets

- **Stain & Seal** – stain, seal, protect, refinish decks and exterior wood
- **Refinishing** – especially for siding and premium/exotic woods
- **Repair & Maintenance** – structural or condition remediation
- **Cleaning** – standalone pressure washing for driveways, walkways, patios

## Species Model

- Redwood
- Cedar
- IPE
- Teak (mostly for furniture/exotic structures)
- Hardwood (deck-only umbrella)
- Wood (General) – fallback when species is not specified

Species is **optional** in creative:
- Some headlines explicitly call out species (e.g., Redwood, Cedar, IPE, Teak)
- Others use generic “Wood” to match broader queries

## Creative Regime (C4 – Hybrid Premium)

Three headline “regimes” are mixed in the assets:

1. **Professional Contractor**
   - “Professional Redwood Deck Stain and Seal”
   - “Cedar Siding Repair and Maintenance”

2. **Premium Craftsmanship**
   - “Premium IPE Deck Refinishing Services”
   - “Teak Outdoor Furniture Refinishing”

3. **Outcome / Protection**
   - “Protect Redwood Decks From Sun and Moisture”
   - “Restore & Protect Natural Wood Siding”

This gives Google’s RSA system room to learn which framing works best for different queries, buyers and surfaces.

## CTA and Pinning

All assets use a single, consistent CTA:

> **Request a Free Estimate**

This is intended to:
- Reduce friction (emphasizes free and estimate, not commitment)
- Work for both Residential and PM/HOA buyers
- Align with landing page CTAs
- Map cleanly into Salesforce (“Free Estimate” as lead intent)

Pinning strategy (P2 – Soft Pinning):
- CTA is pinned to the 3rd headline position (H3)
- Other headlines are left unpinned so Google can test combinations

## Geo Strategy

- Phase 1: **Bay Area only**
- No city names in creative
- No “near me” language
- Geo control handled at campaign level, not keyword or ad text

This avoids geo-fragmenting budget and keeps learning data dense.

## Persona Considerations

Two main buyer clusters:

- **Residential**
  - Wants nicer-looking decks, fences, siding and furniture
  - Sensitive to minimum job size, budget, trust, reviews

- **PM / HOA / Light Commercial**
  - Focused on reliability, coverage, licensing/insurance, experience
  - Cares about restoration, long-term protection, scope clarity

Creative is written to be neutral/premium enough to speak to both, with some lines skewed slightly more toward PM/HOA (e.g., “managed communities”, “multi-unit properties”) and some toward Residential (e.g., “improve curb appeal”).

## How to Use This Inventory

1. **RSA Inventory (`rsa_inventory.csv`)**
   - Use the `tab_name` and `surface` columns to filter by Deck, Siding, Exterior Wood + Furniture, Pressure Washing.
   - Use `species` + `intent` + `regime` to see how coverage looks across your taxonomy.
   - Use `KEEP` and `NOTES` to prune or adjust lines you don’t like.

2. **Campaign Export (`campaign_export.csv`)**
   - Use as a starting point for Google Ads UI upload.
   - You can expand it by adding more rows from `rsa_inventory.csv`.

3. **Editor Import (`editor_import.csv`)**
   - Use as a basis for Google Ads Editor import.
   - Adapt column names/fields to match your exact Editor schema and add pinning fields as desired.

## Extending the System

If you want more density:

- Add additional HEADLINE and DESCRIPTION rows to `rsa_inventory.csv` following the same patterns.
- Maintain consistency with:
  - Surface
  - Species
  - Intent
  - Campaign / Ad Group mapping
  - CTA and pinning strategy

You can also introduce:
- More PM/HOA-specific language for multi-unit and managed communities.
- More rainy-season oriented copy around pressure washing and furniture work.
- Separate Residential vs Commercial campaigns in Phase 2 if budget and volume justify it.
