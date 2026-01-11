# Cal Preserving – Phase 1 Google Ads Taxonomy Overview

## 1. Surfaces (Top Level)

1. **Deck**
2. **Siding**
3. **Exterior Wood + Furniture**
4. **Pressure Washing**

These correspond directly to campaigns in Google Ads for Phase 1 (Bay Area only).

---

## 2. Intents by Surface

### 2.1 Deck

- **Stain & Seal**
  - Clean, prep, stain and seal wood decks.
  - Primary species: Redwood, Cedar, IPE, Teak, Hardwood, Wood (General).
- **Repair & Maintenance**
  - Repair dry rot, loose boards, railings, structural issues.
  - Prepare for refinishing or keep safe and usable.

### 2.2 Siding

- **Refinishing**
  - “Wood Siding Refinishing” framing.
  - Clean, prep and refinish natural wood siding.
  - Species: Redwood, Cedar, IPE, Wood (General).
- **Repair & Maintenance**
  - “Wood Siding Repair and Maintenance”.
  - Replace/repair problem boards, trim, and problem areas.

### 2.3 Exterior Wood + Furniture

- **Stain & Seal**
  - Fences, pergolas, trellises, gazebos, arbors.
  - Teak & IPE outdoor furniture.
- **Repair & Maintenance**
  - Fence, pergola and structure repairs.
  - Furniture repairs and maintenance.

Species:
- Redwood
- Cedar
- IPE
- Teak
- Wood (General)

### 2.4 Pressure Washing

- **Cleaning (Standalone)**
  - Driveways, walkways, patios, hardscape surfaces.
  - Not just prep for refinishing – standalone service in Phase 1.

No species dimension here.

---

## 3. Species Dimension

Used wherever the substrate is a real differentiator:

- **Redwood**
- **Cedar**
- **IPE**
- **Teak**
- **Hardwood** (Deck umbrella only)
- **Wood (General)** – fallback when species is unknown or irrelevant

Species appears:
- In some headlines (high intent, premium jobs)
- In some descriptions (material expertise signal)
- Not used in Pressure Washing

---

## 4. Geo and Persona

### Geo

- Phase 1: Bay Area only.
- No city names and no “near me” tokens in creative.
- Geo is controlled at the campaign level only.

### Personas

- **Residential**
  - Homeowners with decks, fences, siding, furniture.
- **PM / HOA / Light Commercial**
  - Property managers, HOAs, small commercial property owners.

Creative is neutral/premium so that both personas can convert through the same campaigns and landing pages in Phase 1.

---

## 5. Mapping to RSA Inventory

In `rsa_inventory.csv`:

- `tab_name` roughly aligns to:
  - Deck
  - Siding
  - Exterior Wood + Furniture
  - Pressure Washing

- `surface` is the surface-friendly label.
- `species` holds the species dimension.
- `intent` indicates the intent bucket (Stain & Seal, Refinishing, Repair & Maintenance, Cleaning).
- `regime` indicates the creative regime (Professional, Premium, Outcome).

Use filters in your spreadsheet tool to inspect coverage:
- For example, filter `surface = "Deck"` and inspect species/intent combinations.
- Or filter `intent = "Repair & Maintenance"` to see how repair is covered across surfaces.

---

## 6. Future Extensions (Phase 2+)

When budget and volume allow, you can extend this taxonomy by:

- Splitting Residential vs Commercial campaigns.
- Adding Fringe/Out-of-core geo campaigns.
- Introducing dedicated PM/HOA campaigns for multi-unit and managed properties.
- Adding more furniture-specific campaigns in rainy season.
- Adding brand/remarketing campaigns.

The Phase 1 taxonomy is deliberately designed so that it can grow into this more complex structure without major rewrites.
