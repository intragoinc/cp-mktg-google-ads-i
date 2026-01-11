---

## 3️⃣ `02_23_reporting-spec.md`

```md
# Reporting Spec — Cal Preserving Google Ads (Phase 3)

## 1. Goals

- Give Brent and Cal Preserving a clear view of:
  - Lead volume and cost by service, geo, and persona.
  - Pipeline & closed-won revenue from Google Ads.
  - Efficiency metrics (CPL, CPQL, CAC, ROAS).
- Keep it lightweight enough that Salesforce + Google Ads + GA4 can support it without new tools.

---

## 2. Core Dashboards

### 2.1 Marketing Performance Dashboard (Google Ads + SFDC)

**Audience:** Brent, Aksha  
**Questions answered:**

- How many leads per week by campaign?
- What’s the cost per lead (CPL) by service + geo?
- Which campaigns/ad groups are under- or over-performing?
- How do residential vs commercial leads compare?

**Key Metrics:**

- Clicks
- Impressions
- CTR
- Avg CPC
- Leads (SFDC Leads created)
- CPL (Cost / Leads)
- Leads by `Primary_Service__c`
- Leads by `Property_Type__c` (Residential vs Commercial)
- Leads by `Territory__c` (Bay Area vs Fringe)

**Breakdowns:**

- Rows: `utm_campaign` (campaign)  
- Columns: metrics above  
- Filters: Date, Service, Geo, Persona

---

### 2.2 Sales & Estimator Performance Dashboard (SFDC)

**Audience:** Estimators, Sales, Brent  

**Questions:**

- Are Google Ads leads being followed up quickly?
- Which surfaces and personas convert best?
- What average ticket sizes are we seeing by service?

**Key Metrics:**

- Leads → Opportunities → Closed Won
- Lead → Opportunity conversion rate
- Average Opportunity Amount by `Primary_Service__c`
- Win rate by `Primary_Service__c`
- Win rate by Property Type (Residential / Commercial)
- Average time from Lead to First Contact
- Average time from Lead to Estimate
- Average time from Estimate to Close

**Breakdowns:**

- Service (`Primary_Service__c`)
- Persona (`Property_Type__c`)
- Territory (`Territory__c`)
- Timing window (`Timing_Window__c`)

---

### 2.3 Finance / ROAS Dashboard (SFDC + Manual Cost Import)

**Audience:** Brent (finance hat), CPA  

**Questions:**

- Is Google Ads profitable at the campaign and service level?
- What’s the payback period?

**Key Metrics:**

- Google Ads spend (imported from Google Ads at campaign level)
- Closed-won revenue attributed to Google Ads
- ROAS = Revenue / Spend
- CAC = Spend / # Closed-won
- Payback period (approx, using gross margin & CAC)

**Breakdowns:**

- `utm_campaign`
- `Primary_Service__c`
- `Property_Type__c`

---

## 3. Attribution Model

**Primary model:**  
- First-touch = Google Ads (based on UTM + GCLID into Lead).  
- Revenue attribution = all closed-won Opportunities that originated from a Google Ads Lead.

Later you can add:

- GCLID-based offline conversion imports into Google Ads.
- Multi-touch modeling via GA4 + SFDC if needed.

---

## 4. Key Fields Required for Reporting

From `02_17_sfdc-mapping.csv`:

- `LeadSource` (should = Paid Search for all GA leads)
- `Lead_Source_Detail__c`
- `UTM_Source__c`, `UTM_Medium__c`, `UTM_Campaign__c`, `UTM_Term__c`, `UTM_Content__c`
- `Landing_Page__c`
- `Primary_Service__c`
- `Surface_Tags__c`
- `Property_Type__c`
- `Territory__c`
- `Timing_Window__c`
- `Is_Commercial__c`, `Is_Residential__c`
- `GCLID__c`

On the Opportunity:

- `Amount`
- `Stage`
- `CloseDate`
- `Lead Source` (carried from Lead)
- `Primary_Service__c` (copied from Lead)
- `Property_Type__c`

---

## 5. Cadence & Ownership

- **Weekly:**  
  - Aksha pulls a simple report for:
    - Leads, CPL, spend by campaign.
    - Lead → Opp conversion by service.
  - Shared in a short Loom or summary with Brent.

- **Monthly:**  
  - Brent + estimators review:
    - Closed-won by service.
    - Win rates.
    - Realized ticket sizes.
    - Notes on lead quality by campaign.

- **Quarterly:**  
  - Revisit budget allocation and pruning plan using:
    - ROAS by `Primary_Service__c`.
    - Performance in Fringe vs Bay Area.
    - Residential vs Commercial mix.

---

## 6. Phase 4 Extensions (Later)

When ready:

- HOA / PM / Hospitality segmentation in reports.
- Separate dashboards for:
  - Winter (Pressure-heavy) vs Summer (Deck/Siding-heavy) performance.
- LTV modeling by service type, using repeat jobs and maintenance plans.
