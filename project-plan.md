# Cal Preserving Google Ads Initiative — Project Plan

## Team

| Role | Person | Responsibility |
|------|--------|----------------|
| Lead | Brent | Oversight, approvals, business decisions |
| Marketing | Aksha | Google Ads campaigns, keywords, RSAs, optimization |
| Web | Developer | Landing pages, forms, tracking, PHP handler |
| Salesforce | Developer | Field mapping, UTM capture, reporting |

## Current State

- ✅ Web-to-lead form exists in Salesforce
- ✅ Google Ads account exists (replacing underperforming campaigns)
- ✅ Domain/hosting set up
- ✅ Salesforce admin access available
- ⚠️ Partial photography (build with existing, swap later)
- ❌ No landing pages built yet

---

## Timeline Summary

| Phase | Build Time | Learning Wait | Total |
|-------|------------|---------------|-------|
| **Phase 1** | 1-2 weeks | 2-3 weeks | **3-5 weeks** |
| **Phase 2** | 1-3 days | 2-3 weeks | **2.5-3.5 weeks** |
| **Phase 3** | 0.75-1.5 weeks | 2-4 weeks | **2.75-5.5 weeks** |
| **TOTAL** | 2-4 weeks build | 6-10 weeks learning | **8-14 weeks** |

---

## Phase 1: Bay Area, Mixed Persona

### 1.1 Pre-Build Setup & Coordination

| Task | Notes | Owner | Low (hrs) | High (hrs) | Actual (hrs) | Status |
|------|-------|-------|-----------|------------|--------------|--------|
| Kickoff meeting - align on scope, URLs, timeline | | All | 0.75 | 1.5 | 0 | Not Started |
| Confirm LP URL structure with Web | `/residential/deck/`, etc. | Brent + Web | 0.75 | 1.5 | 0 | Not Started |
| Confirm Salesforce field mapping with SFDC dev | Review `03_04_web-php-sfdc-field-contract.md` | Brent + SFDC | 0.75 | 2.25 | 0 | Not Started |
| Set up Google Ads conversion tracking (verify) | Confirm existing tracking works | Aksha | 0.75 | 1.5 | 0 | Not Started |

**Subtotal: 3-7 hours**

---

### 1.2 Landing Page Build (Web Team)

| Task | Notes | Owner | Low (hrs) | High (hrs) | Actual (hrs) | Status |
|------|-------|-------|-----------|------------|--------------|--------|
| Create Elementor global components (hero, form, process, CTA) | Reusable across all LPs | Web | 3 | 6 | 0 | Not Started |
| Build estimate request form with hidden UTM fields | Per `02_17_lp-spec.md` | Web | 1.5 | 3 | 0 | Not Started |
| Build LP: `/residential/deck/` | From `02_08_lp-deck-residential.md` | Web | 1.5 | 3 | 0 | Not Started |
| Build LP: `/residential/siding/` | From `02_10_lp-siding-residential.md` | Web | 1.5 | 2.25 | 0 | Not Started |
| Build LP: `/residential/wood-structures/` | | Web | 1.5 | 2.25 | 0 | Not Started |
| Build LP: `/residential/pressure/` | From `02_12_lp-pressure-residential.md` | Web | 1.5 | 2.25 | 0 | Not Started |
| Build LP: `/residential/` (catch-all) | From `02_14_lp-exteriorwood-residential.md` | Web | 1.5 | 2.25 | 0 | Not Started |
| Mobile optimization & QA | Lighthouse 80+ target | Web | 1.5 | 3 | 0 | Not Started |
| Thank-you page setup | | Web | 0.75 | 1.5 | 0 | Not Started |

**Subtotal: 14-26 hours (2-4 days)**

---

### 1.3 Salesforce Integration (SFDC Team)

| Task | Notes | Owner | Low (hrs) | High (hrs) | Actual (hrs) | Status |
|------|-------|-------|-----------|------------|--------------|--------|
| Add/verify custom fields for UTMs | `utm_source__c`, `utm_campaign__c`, etc. | SFDC | 0.75 | 2.25 | 0 | Not Started |
| Add custom fields for surfaces, property type | Multi-select, picklist | SFDC | 0.75 | 1.5 | 0 | Not Started |
| Configure PHP handler or update existing web-to-lead | Map form → SFDC fields | SFDC + Web | 1.5 | 3 | 0 | Not Started |
| Test form submission → lead creation | | SFDC | 0.75 | 1.5 | 0 | Not Started |
| Verify UTM fields populate correctly | | SFDC | 0.75 | 1.5 | 0 | Not Started |

**Subtotal: 4.5-10 hours (1-1.5 days)**

---

### 1.4 Google Ads Campaign Build (Marketing)

| Task | Notes | Owner | Low (hrs) | High (hrs) | Actual (hrs) | Status |
|------|-------|-------|-----------|------------|--------------|--------|
| Pause/archive old underperforming campaigns | Keep for reference | Aksha | 0.5 | 0.75 | 0 | Not Started |
| Create campaign structure (5 campaigns) | Bay Area Deck, Siding, Structures, Pressure, Catch-All | Aksha | 1.5 | 3 | 0 | Not Started |
| Create ad groups per campaign (3-4 each) | ~15 ad groups total | Aksha | 2.25 | 3.75 | 0 | Not Started |
| Add keywords from `campaign-master-phase-1.csv` | 47 keywords | Aksha | 1.5 | 2.25 | 0 | Not Started |
| Add negative keywords (campaign + ad group level) | | Aksha | 1.5 | 2.25 | 0 | Not Started |
| Write RSA ad copy (3 RSAs per ad group minimum) | Headlines, descriptions | Aksha | 3 | 6 | 0 | Not Started |
| Configure geo targeting (Bay Area) | | Aksha | 0.75 | 1.5 | 0 | Not Started |
| Set initial budgets and bidding strategy | Manual CPC recommended initially | Aksha | 0.75 | 1.5 | 0 | Not Started |

**Subtotal: 12-21 hours (1.5-3 days)**

---

### 1.5 QA & Launch

| Task | Notes | Owner | Low (hrs) | High (hrs) | Actual (hrs) | Status |
|------|-------|-------|-----------|------------|--------------|--------|
| End-to-end test: Ad → LP → Form → SFDC | Per `03_07_qa-matrix.md` | All | 1.5 | 3 | 0 | Not Started |
| Test each surface LP (5 tests) | Verify lead appears with correct data | Web + SFDC | 0.75 | 1.5 | 0 | Not Started |
| Fix any issues found | Buffer for fixes | Varies | 1.5 | 6 | 0 | Not Started |
| Final review and approval | | Brent | 0.75 | 1.5 | 0 | Not Started |
| Go live | Enable campaigns | Aksha | 0.5 | 0.75 | 0 | Not Started |

**Subtotal: 5-13 hours (1-1.5 days)**

---

### 1.6 Phase 1 Learning Period (2-3 weeks)

| Activity | Hours | Notes |
|----------|-------|-------|
| Daily monitoring (15 min/day) | 2-4 hrs | Check for issues, spend |
| Weekly optimization review | 1.5-3 hrs | Query review, negative additions |
| Decision point: Ready for Phase 2? | 0.75-1.5 hrs | Review data, align on go/no-go |

**Wait time: 2-3 weeks**
**Active work during wait: 4-8.5 hours**

---

### Phase 1 Totals

| Category | Low | High |
|----------|-----|------|
| Build work | 38.5 hrs | 77 hrs |
| Calendar time (build) | 1-2 weeks | 2-3 weeks |
| Learning period | 2 weeks | 3 weeks |
| **Total Phase 1** | **3-4 weeks** | **5-6 weeks** |

---

## Phase 2: Add Fringe Geos

### 2.1 Campaign Duplication (Marketing)

| Task | Notes | Owner | Low (hrs) | High (hrs) | Actual (hrs) | Status |
|------|-------|-------|-----------|------------|--------------|--------|
| Duplicate Bay Area campaigns → Fringe | 4-5 Fringe campaigns | Aksha | 1.5 | 3 | 0 | Not Started |
| Adjust geo targeting for Fringe | | Aksha | 0.75 | 1.5 | 0 | Not Started |
| Update campaign names | | Aksha | 0.5 | 0.75 | 0 | Not Started |
| Set Fringe-specific budgets | Lower budget initially | Aksha | 0.5 | 0.75 | 0 | Not Started |
| Review/adjust keywords if needed | | Aksha | 0.75 | 1.5 | 0 | Not Started |

**Subtotal: 4-7.5 hours (0.5-1 day)**

---

### 2.2 Web & Salesforce (Minimal Changes)

| Task | Notes | Owner | Low (hrs) | High (hrs) | Actual (hrs) | Status |
|------|-------|-------|-----------|------------|--------------|--------|
| Verify LPs work for Fringe traffic | Same LPs, no new builds | Web | 0.5 | 0.75 | 0 | Not Started |
| Add `utm_geo` tracking if not present | bay_area vs fringe | SFDC | 0.75 | 1.5 | 0 | Not Started |
| Test Fringe ZIP code submission | | SFDC | 0.5 | 0.75 | 0 | Not Started |

**Subtotal: 1.75-3 hours**

---

### 2.3 QA & Launch

| Task | Notes | Owner | Low (hrs) | High (hrs) | Actual (hrs) | Status |
|------|-------|-------|-----------|------------|--------------|--------|
| Test Fringe campaigns → LP → SFDC | | All | 0.75 | 1.5 | 0 | Not Started |
| Verify geo reporting in SFDC | | SFDC | 0.5 | 0.75 | 0 | Not Started |
| Go live Fringe campaigns | | Aksha | 0.5 | 0.75 | 0 | Not Started |

**Subtotal: 1.75-3 hours**

---

### 2.4 Phase 2 Learning Period (2-3 weeks)

| Activity | Hours | Notes |
|----------|-------|-------|
| Monitor for Fringe-specific issues | 1.5-3 hrs | Job size, routing concerns |
| Optimization review | 1.5-3 hrs | Budget allocation between geos |
| Decision point: Ready for Phase 3? | 0.75-1.5 hrs | |

**Wait time: 2-3 weeks**
**Active work during wait: 3.75-7.5 hours**

---

### Phase 2 Totals

| Category | Low | High |
|----------|-----|------|
| Build work | 7.5 hrs | 13.5 hrs |
| Calendar time (build) | 1-2 days | 2-3 days |
| Learning period | 2 weeks | 3 weeks |
| **Total Phase 2** | **2.5 weeks** | **3.5 weeks** |

---

## Phase 3: Persona Split (Residential + Commercial)

### 3.1 Commercial Landing Pages (Web Team)

| Task | Notes | Owner | Low (hrs) | High (hrs) | Actual (hrs) | Status |
|------|-------|-------|-----------|------------|--------------|--------|
| Build LP: `/commercial/deck/` | From `02_09_lp-deck-commercial.md` | Web | 1.5 | 3 | 0 | Not Started |
| Build LP: `/commercial/siding/` | From `02_11_lp-siding-commercial.md` | Web | 1.5 | 2.25 | 0 | Not Started |
| Build LP: `/commercial/wood-structures/` | | Web | 1.5 | 2.25 | 0 | Not Started |
| Build LP: `/commercial/pressure/` | From `02_13_lp-pressure-commercial.md` | Web | 1.5 | 2.25 | 0 | Not Started |
| Build LP: `/commercial/` (catch-all) | From `02_15_lp-exteriorwood-commercial.md` | Web | 1.5 | 2.25 | 0 | Not Started |
| Update CTA to "Request a Proposal" on commercial LPs | | Web | 0.75 | 1.5 | 0 | Not Started |
| Mobile optimization & QA | | Web | 1.5 | 3 | 0 | Not Started |

**Subtotal: 10-16.5 hours (1.5-2.5 days)**

---

### 3.2 Campaign Restructure (Marketing)

| Task | Notes | Owner | Low (hrs) | High (hrs) | Actual (hrs) | Status |
|------|-------|-------|-----------|------------|--------------|--------|
| Split Bay Area campaigns by persona | 5 → 10 campaigns | Aksha | 2.25 | 3.75 | 0 | Not Started |
| Split Fringe campaigns by persona | 4 → 8 campaigns | Aksha | 1.5 | 3 | 0 | Not Started |
| Update LP URLs in all campaigns | Point to correct persona LP | Aksha | 1.5 | 2.25 | 0 | Not Started |
| Adjust ad copy for commercial tone | "Proposal" vs "Estimate" | Aksha | 2.25 | 4.5 | 0 | Not Started |
| Set persona-specific budgets | ~60% residential, 40% commercial | Aksha | 0.75 | 1.5 | 0 | Not Started |
| Add commercial-specific keywords if any | HOA, property management terms | Aksha | 0.75 | 1.5 | 0 | Not Started |

**Subtotal: 9-16.5 hours (1.5-2.5 days)**

---

### 3.3 Salesforce Updates

| Task | Notes | Owner | Low (hrs) | High (hrs) | Actual (hrs) | Status |
|------|-------|-------|-----------|------------|--------------|--------|
| Add `utm_persona` field if not present | residential vs commercial | SFDC | 0.75 | 1.5 | 0 | Not Started |
| Verify persona reporting works | | SFDC | 0.75 | 1.5 | 0 | Not Started |
| Test commercial form submissions | | SFDC | 0.5 | 0.75 | 0 | Not Started |

**Subtotal: 2-3.75 hours**

---

### 3.4 QA & Launch

| Task | Notes | Owner | Low (hrs) | High (hrs) | Actual (hrs) | Status |
|------|-------|-------|-----------|------------|--------------|--------|
| Test all residential campaign → LP paths | 5 surfaces × 2 geos | All | 0.75 | 1.5 | 0 | Not Started |
| Test all commercial campaign → LP paths | 5 surfaces × 2 geos | All | 0.75 | 1.5 | 0 | Not Started |
| Verify CTA differences (Estimate vs Proposal) | | Web | 0.5 | 0.75 | 0 | Not Started |
| End-to-end SFDC lead tests (6 variations) | Per `03_07_qa-matrix.md` | SFDC | 0.75 | 1.5 | 0 | Not Started |
| Fix any issues | | Varies | 1.5 | 4.5 | 0 | Not Started |
| Final review and approval | | Brent | 0.75 | 1.5 | 0 | Not Started |
| Go live Phase 3 | | Aksha | 0.5 | 0.75 | 0 | Not Started |

**Subtotal: 5.5-12 hours (1-1.5 days)**

---

### 3.5 Phase 3 Learning Period (2-4 weeks)

| Activity | Hours | Notes |
|----------|-------|-------|
| Compare residential vs commercial performance | 1.5-3 hrs | |
| Optimization for persona-specific patterns | 1.5-3 hrs | |
| Consider smart bidding transition | 0.75-1.5 hrs | If 50+ conversions reached |

**Wait time: 2-4 weeks**
**Active work during wait: 3.75-7.5 hours**

---

### Phase 3 Totals

| Category | Low | High |
|----------|-----|------|
| Build work | 26.5 hrs | 48.75 hrs |
| Calendar time (build) | 0.75-1 week | 1.5-2 weeks |
| Learning period | 2 weeks | 4 weeks |
| **Total Phase 3** | **2.75-3 weeks** | **5-6 weeks** |

---

## Full Project Summary

| Phase | Build Hours | Calendar (Build) | Learning Wait | Total Duration |
|-------|-------------|------------------|---------------|----------------|
| **Phase 1** | 38.5-77 hrs | 1-2 weeks | 2-3 weeks | **3-5 weeks** |
| **Phase 2** | 7.5-13.5 hrs | 1-3 days | 2-3 weeks | **2.5-3.5 weeks** |
| **Phase 3** | 26.5-49 hrs | 0.75-1.5 weeks | 2-4 weeks | **2.75-5.5 weeks** |
| **TOTAL** | **72.5-139.5 hrs** | **2-4 weeks** | **6-10 weeks** | **8-14 weeks** |

---

## Work Distribution by Role

| Role | Phase 1 | Phase 2 | Phase 3 | Total |
|------|---------|---------|---------|-------|
| **Brent (Lead)** | 3-6 hrs | 1.5-3 hrs | 1.5-3 hrs | **6-12 hrs** |
| **Aksha (Marketing)** | 14-26 hrs | 5-10.5 hrs | 10.5-19.5 hrs | **29.5-56 hrs** |
| **Web Developer** | 16-29 hrs | 0.75-1.5 hrs | 11-19.5 hrs | **27.75-50 hrs** |
| **Salesforce Developer** | 5-11 hrs | 1.5-3 hrs | 2.25-4.5 hrs | **8.75-18.5 hrs** |

---

## Key Milestones

1. **Phase 1 Go-Live** — First ads running, leads flowing to Salesforce
2. **Phase 1 Data Checkpoint** — 30-50 conversions, ready for Phase 2 decision
3. **Phase 2 Go-Live** — Fringe campaigns active
4. **Phase 2 Data Checkpoint** — Geo comparison data, ready for Phase 3 decision
5. **Phase 3 Go-Live** — Full persona split active
6. **System Maturity** — Consider smart bidding, ongoing optimization mode

---

## Risks That Could Extend Timeline

| Risk | Impact | Mitigation |
|------|--------|------------|
| LP design revisions | +1-2 weeks | Approve wireframes before build |
| Salesforce field issues | +3-5 days | Early field contract review |
| Low conversion volume | +2-4 weeks learning | Increase budget or extend wait |
| Team availability gaps | +1-2 weeks per phase | Confirm capacity upfront |
| Photography delays | Minimal | Use existing images, swap later |

---

## Notes

- Photography: Build LPs with existing images, swap in new assets when available
- Google Ads: Replacing existing campaigns means historical data helps learning period
- Salesforce: Web-to-lead exists, just need UTM field additions
- All documentation exists in `/docs/` folder for reference
