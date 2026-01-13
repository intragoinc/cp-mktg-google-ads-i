# Cal Preserving Google Ads Project Summary

## What It Is

A structured Google Ads demand generation system for **Cal Preserving**, a Bay Area exterior wood preservation company (decks, siding, fences, pressure washing).

## The Goal

Create a repeatable, measurable paid search channel that:

- Targets high-value customers for premium wood restoration
- Filters out low-value traffic (DIY, composites, budget seekers)
- Supports geographic and market expansion
- Integrates with Salesforce for attribution and reporting

---

## Three Phases

| Phase | Scope |
|-------|-------|
| **1** | Bay Area only, mixed persona |
| **2** | Adds Fringe geographies |
| **3** | Splits Residential vs Commercial personas |

---

## Five Service Surfaces

1. **Deck** - Repair, refinishing, sealing, staining
2. **Siding** - Wood siding repair, restoration, finishing
3. **Structures** - Fences, gates, arbors, pergolas, gazebos, trellis
4. **Pressure Washing** - Hardscape, concrete, stone, patio cleaning
5. **Catch-All** - Generic exterior wood restoration queries

---

## Target Personas

### Residential

- **Profile**: Homeowners, renters with authority, property sellers/buyers
- **Motivations**: Gray/aged wood, peeling, mold, upcoming events, property sales
- **Knowledge Level**: Low to medium (often unsure of wood species)
- **Search Behavior**: Uses "near me" queries, city names
- **CTA**: "Request a Free Estimate"
- **Key Message**: "You don't pay until you're happy"

### Commercial / HOA

- **Profile**: Property managers, facility managers, HOA boards, multi-unit owners
- **Motivations**: Maintenance cycles, liability, board requirements, reserve budgets
- **Knowledge Level**: Higher technical knowledge
- **Search Behavior**: Searches by region, uses "proposal" language
- **CTA**: "Request a Proposal"
- **Key Message**: Risk mitigation, compliance, reliability

---

## Landing Pages

### URL Schema (Phase 3)

| Surface | Residential | Commercial |
|---------|-------------|------------|
| Deck | `/residential/wood-deck/` | `/commercial/wood-deck/` |
| Siding | `/residential/wood-siding/` | `/commercial/wood-siding/` |
| Structures | `/residential/wood-structures/` | `/commercial/wood-structures/` |
| Furniture | `/residential/wood-furniture/` | `/commercial/wood-furniture/` |
| Pressure | `/residential/pressure/` | `/commercial/pressure/` |
| Catch-All | `/residential/` | `/commercial/` |

---

## Keyword Strategy

### Match Types

- **Exact Match**: High intent, high conversion (primary)
- **Phrase Match**: Balanced intent + volume (secondary)
- **No Broad Match**: Protects against off-topic queries

### Keywords by Surface

| Surface | Count | Intent Types |
|---------|-------|--------------|
| Deck | 12 | Repair, refinishing, sealing, species |
| Siding | 9 | Repair, sealing, species |
| Structures/Fences | 13 | Repair, refinishing, furniture |
| Pressure Washing | 4 | Hardscape, concrete, stone, patio |
| Catch-All | 8 | Exterior wood restoration/refinishing |

### Sample Keywords

**Deck Campaign:**
- `deck repair` (Exact)
- `deck restoration` (Exact)
- `deck refinishing` (Exact)
- `redwood deck` (Phrase)
- `cedar deck` (Phrase)
- `ipe deck` (Phrase)

**Siding Campaign:**
- `wood siding repair` (Exact)
- `wood siding restoration` (Exact)
- `wood siding sealing` (Phrase)
- `cedar siding` (Phrase)

### Negative Keywords

**Global Exclusions:**
- DIY/Tutorial: `how to`, `diy`, `tutorial`, `instructions`
- Job Boards: `jobs`, `job`, `careers`, `salary`
- Retail: `home depot`, `lowes`, `menards`, `amazon`
- Materials Only: `supplies`, `materials`, `kits`, `prefab`
- Price-Sensitive: `cheap`, `free`
- Social/Forum: `reddit`, `youtube`

**Composite/Non-Wood Materials:**
- `plastic`, `pvc`, `vinyl`, `resin`, `synthetic`, `composite`, `engineered`, `polywood`
- `fiber cement`, `hardie`, `hardiplank`, `james hardie`, `lp smartside`
- `trex`, `timbertech`, `azek`, `fiberon`, `evergrain`
- `metal`, `aluminum`, `steel`, `iron`, `wrought iron`

**Ad Group Level Exclusions:**
- Deck campaigns exclude: siding, fence, furniture, brick, concrete, masonry
- Siding campaigns exclude: deck, fence, furniture, brick, concrete, masonry
- Pressure campaigns exclude: deck, siding, fence, furniture

---

## Team Responsibilities (RACI)

| Area | Marketing | Web | Salesforce |
|------|-----------|-----|------------|
| Campaign/keyword setup | Accountable | Informed | Consulted |
| LP copy & structure | Accountable | Consulted | Informed |
| LP implementation | Consulted | Accountable | Informed |
| Attribution implementation | Accountable | Informed | Accountable |
| Quality Assurance | Accountable | Responsible | Consulted |

---

## Business Rules

### Geographic Rules

- **Bay Area**: Lower job minimums (better travel economics)
- **Fringe**: Higher job minimums (justifies travel cost)
- ZIP code used for routing decisions

### Persona Rules

- Phase 1-2: Both personas on same LPs
- Phase 3: Fully separate campaigns, LPs, CTAs
- Residential: "You don't pay until you're happy" guarantee
- Commercial: Workmanship guarantee + operations focus

### Attribution Rules

- Form submission = primary conversion event
- GCLID captured for offline conversion import
- First-touch attribution via UTM/GCLID

---

## Campaign Structure

### Phase 1 (5 Campaigns)

- Bay Area Deck
- Bay Area Siding
- Bay Area Structures
- Bay Area Pressure
- Bay Area Catch-All

### Phase 2 (Adds Fringe)

- Fringe Deck
- Fringe Siding
- Fringe Structures
- Fringe Catch-All
- (Fringe omits Pressure & Furniture due to volume)

### Phase 3 (Persona Split)

Every campaign splits:
- `Bay Area Deck - Residential`
- `Bay Area Deck - Commercial`

### Ad Group Structure

Organized by intent:
- Repair and Maintenance
- Finishing and Protection
- Premium Wood (species-specific)
