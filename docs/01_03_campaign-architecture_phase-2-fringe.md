# 01_03 – Campaign Architecture (Phase 2 – Fringe Geo Expansion)

## 1. Purpose of this Document

This document defines the **Phase 2** Google Ads campaign architecture for Cal Preserving, focused on:

- Expanding the **existing Phase 1 Bay Area structure** into the **Fringe geo** (Napa/Sonoma/Carmel/Marin and other premium out-of-core metros).
- Maintaining **full structural parity** with the locked Phase 1 campaigns, based on:

`docs/FINAL_cal_preserving_consolidated_keywords - FINAL_cal_preserving_consolidated_keywords.csv`

Phase 2 is **structural**, not strategic:  
we **clone** the proven Bay Area campaign matrix into Fringe with adjusted budgets and bid strategies, while keeping:

- the same **service taxonomy**
- the same **ad group definitions**
- the same **keyword sets and match types**
- the same **negative keyword strategy**
- the same **LP & persona model (Residential + Commercial mixed at campaign level)**

Persona-based campaign splits are **Phase 3**, not part of this document.

---

## 2. Recap – Phase 1 Structure (Bay Area Only)

Phase 1 includes **five** core campaigns, each scoped to **Bay Area** geo only:

1. **Bay Area Deck**
2. **Bay Area Siding**
3. **Bay Area Structures**  
   (Fence + Furniture + Exterior Wood Structures)
4. **Bay Area Pressure**  
   (Hardscape only – not deck/siding/fence prep)
5. **Bay Area Exterior Wood (Catch-all)**

Each campaign contains multiple ad groups, as defined in the locked CSV:

- **Bay Area Deck**
  - `Deck Repair and Maintenance`
  - `Deck Finishing and Protection`
  - `Premium Wood Deck Restoration`

- **Bay Area Siding**
  - `Siding Repair and Maintenance`
  - `Siding Finishing and Protection`
  - `Premium Wood Siding`

- **Bay Area Structures**
  - `Fence Repair and Maintenance`
  - `Fence Finishing and Protection`
  - `Premium Wood Fence Restoration`
  - `Teak Furniture Restoration`

- **Bay Area Pressure**
  - `Pressure Washing Hardscape`

- **Bay Area Exterior Wood (Catch-all)**
  - `Exterior Wood Restoration and Preservation`

Negatives and match types are locked in the CSV and must stay **identical** in Phase 2 (Fringe).

---

## 3. Phase 2 Objective – Fringe Geo Expansion

### 3.1 What Phase 2 Does

Phase 2 **expands reach** by creating a **Fringe clone** of the Phase 1 structure:

- Same services.
- Same campaign/ad group naming pattern (with “Fringe” prefix).
- Same keyword sets and match types.
- Same ad group negatives and campaign negatives.
- Same LP mapping.
- Same reporting semantics.

**Only differences versus Phase 1:**

- **Geo targeting:**  
  - Phase 1: Bay Area zip codes only.  
  - Phase 2: Fringe zip codes only (premium out-of-core metros).
- **Budget allocation:**  
  - Fringe receives **smaller, test-level budgets** initially.
- **Bid strategy / targets:**  
  - Optionally more conservative (higher target CPA or lower tROAS) until enough data is gathered.

### 3.2 Persona Handling in Phase 2

- Campaigns remain **persona-mixed** in Phase 2:
  - Residential + Commercial leads both enter the same Fringe campaigns.
- Persona-specific LP messaging and form questions still operate at the **LP level**, not the campaign level.
- Separate **Residential vs Commercial campaigns** will be introduced in **Phase 3**, once performance and volume justify splitting.

---

## 4. Phase 2 Campaign Matrix – Fringe Clones

For every Phase 1 “Bay Area” campaign, Phase 2 introduces a parallel **“Fringe”** campaign with identical internal structure.

### 4.1 Campaign List (Phase 2)

New Fringe campaigns:

1. **Fringe Deck**
2. **Fringe Siding**
3. **Fringe Structures**
4. **Fringe Pressure**
5. **Fringe Exterior Wood (Catch-all)**

Each Fringe campaign is a **1:1 structural clone** of its Bay Area counterpart.

---

## 5. Detailed Campaign & Ad Group Architecture (Fringe)

### 5.1 Fringe Deck

**Campaign Name:** `Fringe Deck`  
**Geo:** Fringe zip codes only (premium out-of-core metros).  
**Objective:** Acquire high-value deck restoration work outside the core Bay Area footprint.

**Ad Groups (mirror Phase 1):**

1. `Deck Repair and Maintenance`
   - Keywords (examples from CSV):
     - `deck repair` (Exact)
     - `deck restoration` (Exact)
     - `deck maintenance` (Exact)
     - `deck resurfacing` (Phrase)
   - Ad Group Negatives:
     - `siding|fence|gazebo|arbor|trellis|pergola|furniture|brick|concrete|masonry|stone`
   - Campaign Negatives:
     - `how to|diy|tutorial|instructions|jobs|job|careers|salary|home depot|lowes|menards|amazon|supplies|materials|kits|prefab|prebuilt|cheap|free|reddit|youtube|plastic|pvc|vinyl|resin|synthetic|composite|engineered|polywood|fiber cement|fibre cement|hardie|hardiplank|james hardie|lp smartside|trex|timbertech|azek|fiberon|evergrain|metal|aluminum|aluminium|steel|iron|wrought iron`

2. `Deck Finishing and Protection`
   - Keywords:
     - `deck refinishing` (Exact)
     - `deck sealing` (Phrase)
     - `deck staining` (Phrase)
   - Same ad group & campaign negative structures as Bay Area.

3. `Premium Wood Deck Restoration`
   - Keywords:
     - `redwood deck` (Phrase)
     - `cedar deck` (Phrase)
     - `ipe deck` (Phrase)
     - `teak deck` (Phrase)
   - Same negatives as Bay Area Deck.

> **LP Mapping (Phase 2 Fringe – Deck):**  
> - Residential: Fringe traffic → same **Deck Residential LP** (content adjusted to allow for non-Bay-Area coverage).  
> - Commercial: Fringe traffic → same **Deck Commercial LP**, with commercial proof content applicable beyond Bay Area.

---

### 5.2 Fringe Siding

**Campaign Name:** `Fringe Siding`  
**Geo:** Fringe zip codes only.

**Ad Groups (mirror Phase 1):**

1. `Siding Repair and Maintenance`
   - Keywords:
     - `wood siding repair` (Exact)
     - `wood siding restoration` (Exact)
     - `wood siding maintenance` (Exact)
   - Ad Group Negatives:
     - `deck|fence|gazebo|arbor|trellis|pergola|furniture|brick|concrete|masonry|stone`
   - Campaign Negatives: same global retail/DIY list.

2. `Siding Finishing and Protection`
   - Keywords:
     - `wood siding sealing` (Phrase)
     - `wood siding staining` (Phrase)

3. `Premium Wood Siding`
   - Keywords:
     - `redwood siding` (Phrase)
     - `cedar siding` (Phrase)
     - `ipe siding` (Phrase)
     - `teak siding` (Phrase)

> **LP Mapping – Siding (Fringe):**  
> - Residential: Siding Residential LP  
> - Commercial: Siding Commercial LP

---

### 5.3 Fringe Structures

**Campaign Name:** `Fringe Structures`  
**Geo:** Fringe zip codes only.  
**Scope:** Fences, exterior wood structures, and teak furniture restoration.

**Ad Groups (mirror Phase 1):**

1. `Fence Repair and Maintenance`
   - Keywords:
     - `wood fence repair` (Exact)
     - `wood fence restoration` (Exact)
     - `wood fence maintenance` (Exact)
   - Ad Group Negatives:
     - `deck|siding|gazebo|arbor|trellis|pergola|furniture|brick|concrete|masonry|stone`

2. `Fence Finishing and Protection`
   - Keywords:
     - `wood fence resurfacing` (Phrase)
     - `wood fence refinishing` (Exact)
     - `wood fence sealing` (Phrase)
     - `wood fence staining` (Phrase)

3. `Premium Wood Fence Restoration`
   - Keywords:
     - `redwood fence` (Phrase)
     - `cedar fence` (Phrase)
     - `ipe fence` (Phrase)
     - `hardwood fence` (Phrase)

4. `Teak Furniture Restoration`
   - Keywords:
     - `teak furniture restoration` (Exact)
     - `teak furniture refinishing` (Exact)
     - `teak furniture repair` (Exact)
     - `teak furniture maintenance` (Exact)
   - Ad Group Negatives:
     - `deck|siding|gazebo|arbor|trellis|pergola|fence|brick|concrete|masonry|stone`

> **LP Mapping – Structures (Fringe):**  
> - Residential: Structures/Furniture Residential LP (or the unified exterior structures LP with furniture module).  
> - Commercial: Structures/Furniture Commercial LP, emphasizing multi-unit and facilities work.

---

### 5.4 Fringe Pressure

**Campaign Name:** `Fringe Pressure`  
**Geo:** Fringe zip codes only.  
**Scope:** Hardscape-only pressure washing; deck/siding prep remains baked into refinishing campaigns.

**Ad Groups (mirror Phase 1):**

1. `Pressure Washing Hardscape`
   - Keywords:
     - `hardscape pressure washing` (Phrase)
     - `concrete pressure washing` (Phrase)
     - `stone pressure washing` (Phrase)
     - `patio pressure washing` (Phrase)
   - Ad Group Negatives:
     - `deck|siding|fence|gazebo|arbor|trellis|pergola|furniture`
   - Campaign Negatives:
     - same global retail/DIY/materials list.

> **LP Mapping – Pressure (Fringe):**  
> - Residential: Pressure Residential LP (hardscape-focused).  
> - Commercial: Pressure Commercial LP, with emphasis on multi-surface hardscape for commercial properties.

---

### 5.5 Fringe Exterior Wood (Catch-all)

**Campaign Name:** `Fringe Exterior Wood (Catch-all)`  
**Geo:** Fringe zip codes only.  
**Scope:** Ambiguous “exterior wood” queries that are not clearly deck, siding, or fence-led but still high-intent.

**Ad Groups (mirror Phase 1):**

1. `Exterior Wood Restoration and Preservation`
   - Keywords:
     - `exterior wood restoration` (Phrase)
     - `exterior wood refinishing` (Phrase)
     - `exterior wood repair` (Phrase)
     - `exterior wood maintenance` (Phrase)
     - `wood restoration` (Phrase)
     - `wood refinishing` (Phrase)
     - `exterior wood services` (Phrase)
     - `wood preservation` (Phrase)
   - Ad Group Negatives:
     - `brick|concrete|masonry|stone`  
       (to keep hardscape terms out of this campaign)
   - Campaign Negatives:
     - same global list (DIY, retail, materials, composites, etc.).

> **LP Mapping – Catch-all (Fringe):**  
> - Residential: Exterior Wood Residential LP.  
> - Commercial: Exterior Wood Commercial LP.  
> - This LP should emphasize **“Restore, don’t replace”** and route users to deeper service content once they self-identify the surface.

---

## 6. Geo Targeting – Phase 1 vs Phase 2

### 6.1 Bay Area vs Fringe

- **Phase 1 – Bay Area Campaigns**
  - Zip code list = core Bay Area operational footprint.
  - No overlap with Fringe in campaign geo targeting.

- **Phase 2 – Fringe Campaigns**
  - Zip code list = premium out-of-core metros (e.g., Napa, Sonoma, Carmel, Marin, etc.).
  - No overlap with Bay Area campaigns; each lead belongs to exactly one geo cluster.

### 6.2 Implementation Notes

- Use **separate location targets** per campaign:
  - `Bay Area …` → Bay Area zips only.
  - `Fringe …` → Fringe zips only.
- Do **not** mix Bay Area + Fringe in the same campaign.

---

## 7. Budget & Bidding Guidance (Phase 2)

### 7.1 Budget Relationship to Phase 1

Phase 2 budgets should:

- Start **lower than Bay Area** while Fringe data is still sparse.
- Follow the **same relative service weighting** as Phase 1 where possible, with the understanding that:
  - Deck and Siding remain **higher priority**.
  - Structures and Catch-all are important but secondary.
  - Pressure is **opportunistic** and often bundled with refinishing work.

Example conceptual weighting (Fringe):

- **Fringe Deck** and **Fringe Siding**: majority of Fringe spend.
- **Fringe Structures**: selectively funded when volume appears.
- **Fringe Pressure**: conservative test budget.
- **Fringe Catch-all**: modest but always-on, with tight search term monitoring.

(Exact dollar amounts will mirror the overall monthly budget plan and can be adjusted in `tm-plan.md`.)

### 7.2 Bidding

- Use the **same bid strategy type** as Bay Area campaigns (e.g. tCPA/tROAS or Max Conversions with target CPA) but:
  - Start with **slightly more conservative** CPA targets or caps.
  - Only relax targets once statistically meaningful performance is observed in Fringe.

---

## 8. Creative & LP Reuse

### 8.1 Reusing RSAs

- Phase 2 **reuses the same RSA component library** defined in:
  - `02_03_rsa-inventory.csv`
  - `02_04_rsa-component-library.md`
- RSAs can be **copied into the Fringe campaigns unchanged** except for path/URL tags if needed.
- Extensions (sitelinks, callouts, snippets) can also be reused, as long as they remain region-appropriate.

### 8.2 LP Strategy

- LPs remain the same **per service** and **per persona**, but content should:
  - Avoid claiming “Bay Area only” if you intend to serve Fringe.
  - Or include copy that acknowledges serving “Bay Area and select surrounding regions” as needed.
- Form logic and persona questions do **not** change for Phase 2.

---

## 9. Reporting & Measurement

### 9.1 Naming for Analysis

By using the `Bay Area …` vs `Fringe …` naming convention:

- It becomes trivial to:
  - Filter performance by geo cluster.
  - Compare **Bay Area vs Fringe** by:
    - Cost
    - Conversions
    - CPA
    - Lead quality (downstream Salesforce analysis later).

### 9.2 Key Phase 2 Questions

Phase 2 reporting should answer:

1. Do Fringe campaigns generate **high-quality** deck/siding/structures leads at acceptable CPAs?
2. Are **Deck and Siding** still the primary revenue drivers in Fringe?
3. Does **Catch-all** contribute incremental value, or should we constrain it further?
4. Is the **Fringe geo** strong enough to justify:
   - Increased budgets, and
   - Persona-based campaign splits in **Phase 3**?

---

## 10. Dependencies & Implementation Checklist

To launch Phase 2 safely:

- [ ] Confirm Fringe zip code list is finalized and non-overlapping with Bay Area.
- [ ] Create **5 new Fringe campaigns** as 1:1 clones of the Bay Area campaigns.
- [ ] Copy all ad groups, keywords, match types, and negatives from Bay Area to Fringe.
- [ ] Attach correct RSAs from `02_03_rsa-inventory.csv`.
- [ ] Attach extensions (sitelinks, callouts, snippets) per service bundle.
- [ ] Set initial Fringe budgets according to the overall media plan.
- [ ] Confirm LP targeting and tracking parameters (UTMs, `gclid`, etc.) match the existing scheme.
- [ ] Run QA using Google Ads’ “View search terms” after launch to validate fringe query quality.

---

**End of Document – Phase 2 Campaign Architecture (Fringe)**
