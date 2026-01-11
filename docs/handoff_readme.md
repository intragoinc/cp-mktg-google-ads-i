# Cal Preserving – RSA Package Handoff (For Aksha / Implementer)

## Files Included

- `rsa_inventory.csv`
- `campaign_export.csv`
- `editor_import.csv`
- `creative_documentation.md`
- `taxonomy_overview.md`
- `pruning_guide.md`
- `handoff_readme.md` (this file)

## High-Level Flow

1. **Review + Prune**
   - Brent reviews `rsa_inventory.csv` by filtering:
     - `tab_name` (Deck, Siding, Exterior Wood + Furniture, Pressure Washing)
     - `species`, `intent`, `regime`
   - Brent marks `keep = N` on any lines he doesn’t like.
   - Save as `rsa_inventory_pruned.csv`.

2. **Build Import File for Google Ads**
   - Use `campaign_export.csv` as a structural reference.
   - Create a combined CSV which:
     - Specifies Campaign and Ad Group names.
     - Maps each headline/description to the right Ad Group.
     - Includes the CTA as a pinned H3 headline.
   - Load into Google Ads Editor or UI.

3. **Pinning Strategy**
   - CTA: `Request a Free Estimate` pinned to H3.
   - Other headlines left unpinned to allow machine learning.

4. **Campaign / Ad Group Structure**

Phase 1 campaigns (Bay Area only):

- `Bay Area Deck`
- `Bay Area Siding`
- `Bay Area Exterior Wood`
- `Bay Area Pressure Washing`

Within each, Ad Groups reflect:
- Surface
- Species (where applicable)
- Intent (Stain & Seal, Refinishing, Repair & Maintenance, Cleaning)

5. **Geo Targeting**
   - Apply geo at campaign level for Bay Area.
   - No city names or “near me” in creative.

6. **Next Steps After Go-Live**

- Monitor:
  - CTR by campaign and ad group.
  - Conversion rate by surface and intent.
  - Lead quality in Salesforce (Residential vs PM/HOA, job size, species, structure type).

- Use match-back in Salesforce to:
  - Identify best-performing surfaces.
  - Identify best-performing species.
  - Identify high-value lead patterns (e.g., multi-surface, multi-structure, PM/HOA vs Residential).

- Plan Phase 2:
  - Potentially split Residential vs Commercial / PM/HOA campaigns.
  - Introduce Fringe / out-of-core geo campaigns.
  - Expand Furniture if rainy-season utilization is strong.
