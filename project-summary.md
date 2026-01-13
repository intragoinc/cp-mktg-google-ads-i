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

### Standard LP Layout (8 Sections)

1. **Hero** - Headline, subheadline, primary CTA, background image
2. **Pain/Problem** - Common issues and degradation signs
3. **Services** - What's included in the service
4. **Process** - 6-8 step workflow
5. **Why Cal Preserving** - Differentiators and proof points
6. **Service Areas** - Geographic coverage
7. **FAQs** - 4-6 common questions
8. **Footer CTA** - Final call to action

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

## Form Specification

### Required Fields

| Field | Type | Notes |
|-------|------|-------|
| Property Type | Radio | Residential / Commercial |
| Surfaces | Multi-checkbox | At least one required |
| Project Timing | Dropdown | ASAP, 1 month, 3 months, exploring |
| First Name | Text | |
| Last Name | Text | |
| Email | Email | |
| Phone | Phone | |
| Street Address | Text | Autocomplete enabled |
| City | Text | |
| State | Text/Dropdown | |
| ZIP | Text | 5-digit validation |
| Property Relationship | Radio | Owner, Tenant, PM, Contractor, Realtor, Architect |

### Optional Fields

- Project description (textarea)
- Job title (for commercial)
- Company name (for commercial)
- Other phone number
- Lead source detail
- Other comments
- SMS opt-in (NOT pre-checked)

### Hidden Fields (UTM & Attribution)

| Field | Source |
|-------|--------|
| utm_source | Query string |
| utm_medium | Query string |
| utm_campaign | Query string |
| utm_content | Query string |
| utm_term | Query string |
| utm_geo | Hidden field (bay_area / fringe) |
| utm_surface | Hidden field (deck / siding / etc.) |
| utm_persona | Hidden field (residential / commercial) |
| utm_phase | Hidden field (p1 / p2 / p3) |
| gclid | Google auto-tagging |
| lp_slug | e.g., residential/deck |
| lp_url | Full landing page URL |
| session_id | UUID for debugging |

---

## Salesforce Integration

### Data Flow

```
WordPress Form → PHP Handler → Salesforce Web-to-Lead
```

### Key Field Mappings

| Form Field | Salesforce API Name |
|------------|---------------------|
| property_type | Property_Type__c |
| surfaces[] | Surfaces__c (multi-select) |
| project_timing | Project_Timing__c |
| property_relation | Property_Relationship__c |
| utm_source | UTM_Source__c |
| utm_campaign | UTM_Campaign__c |
| gclid | GCLID__c |
| lp_slug | LP_Slug__c |

### Derived Fields (Calculated in Salesforce)

| Field | Logic |
|-------|-------|
| Operational_Persona__c | From property_type |
| Operational_Surface_Primary__c | Priority: Siding > Deck > Structures > Furniture > Pressure |
| Surfaces_Count__c | Count of surfaces selected |
| Paid_Surface_Primary__c | From utm_surface |
| Paid_Geo__c | From utm_geo |
| Paid_Persona__c | From utm_persona (Phase 3) |

---

## Team Responsibilities (RACI)

| Area | Marketing | Web | Salesforce |
|------|-----------|-----|------------|
| Campaign/keyword setup | Accountable | Informed | Consulted |
| LP copy & structure | Accountable | Consulted | Informed |
| LP implementation | Consulted | Accountable | Informed |
| Form UI | Consulted | Accountable | Informed |
| PHP handler | Informed | Accountable | Consulted |
| SFDC field mapping | Informed | Responsible | Accountable |
| Duplicate handling | Informed | Informed | Accountable |
| Reporting/dashboards | Consulted | Informed | Accountable |
| QA & go-live approval | Accountable | Responsible | Consulted |

---

## Key Metrics

### Revenue KPIs (Primary)

- **Close Rate** - % of leads that become paid jobs
- **Average Job Size** - Mean contract value per closed job
- **Average Margin** - Profit per job by surface/geo/persona
- **Revenue per Lead** - Close rate × Average job size
- **Revenue per Campaign** - Aggregate revenue by campaign

### Marketing KPIs (Secondary)

- **Cost Per Lead (CPL)** - Spend / leads generated
- **Cost Per Acquisition (CAC)** - Spend / closed customers
- **Click-Through Rate (CTR)** - Clicks / impressions
- **Conversion Rate** - Leads / landing page sessions
- **Quality Score** - Google Ads metric (1-10)

### Operational KPIs

- **Estimator Load** - Leads per estimator
- **Crew Utilization** - % of time crews are booked
- **Routing Efficiency** - Cost of job delivery vs revenue
- **Seasonality Smoothing** - Variance in lead volume

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

### Form Rules

- Property Type required for routing
- At least one surface required
- Full address required for geo classification
- SMS opt-in NOT pre-checked (TCPA compliance)
- reCAPTCHA v3 server-side validation

### Attribution Rules

- Form submission = primary conversion event
- GCLID captured for offline conversion import
- First-touch attribution via UTM/GCLID

---

## QA Checklist

### Per Phase

- [ ] LP loads correctly for each campaign
- [ ] Form validation works (required fields, reCAPTCHA)
- [ ] UTM fields populate correctly
- [ ] Test submissions appear in Salesforce with correct mapping
- [ ] Thank-you redirect works

### Phase 3 Specific

- [ ] Residential campaigns → residential LPs only
- [ ] Commercial campaigns → commercial LPs only
- [ ] Correct CTAs displayed per persona
- [ ] Form structure identical across personas

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
- etc.

### Ad Group Structure

Organized by intent:
- Repair and Maintenance
- Finishing and Protection
- Premium Wood (species-specific)
