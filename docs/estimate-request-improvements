# Cal Preserving — Estimate Request Form (v2026-1)

This document defines the **canonical web lead form** for Cal Preserving, aligned to the current “Job Site / Contact Info” layout and compatible with all Google Ads rollout phases (1–3).

The form is organized into the following sections, in this exact visual order:

1. Job Site (location)
2. Property Type
3. Surfaces to Be Addressed
4. Project Timing
5. Additional Project Description
6. Contact Info
7. Relationship to Property
8. How Did You Hear About Us?
9. Other Comments
10. SMS Consent

---

## 1. Job Site (Location)

**Section label:** `Job Site`  
**Purpose:** Capture a single, well-structured service location per submission.

All fields in this section are **required**.

### Fields

- **Street \***  
  - Type: single-line text (with address autocomplete enabled)  
  - Example: `1234 Oak Terrace`  
  - Storage: `address_street__c`

- **City \***  
  - Type: single-line text (auto-filled where possible)  
  - Example: `Berkeley`  
  - Storage: `address_city__c`

- **State \***  
  - Type: single-line text or dropdown (auto-filled where possible)  
  - Example: `CA`  
  - Storage: `address_state__c`

- **Zip \***  
  - Type: single-line text (auto-filled where possible)  
  - Example: `94704`  
  - Storage: `address_postal__c`

> **Note:** Even if the UI uses a single autocomplete widget, the implementation MUST persist separate structured values for Street, City, State, and Zip to support future routing/territory logic.

---

## 2. Property Type

**Label:** `What is the type of the property? *`  
**Type:** single-select (radio)  
**Required:** Yes

Options:

- `( ) Residential`
- `( ) Commercial`

**Storage:**

- Field: `property_type__c`  
- Allowed values:  
  - `residential`  
  - `commercial`

> This field is collected from Phase 1 onward and becomes the **persona split** in Phase 3 (Residential vs Commercial campaigns and landing pages).

---

## 3. Surfaces to Be Addressed

**Label:** `What are the surfaces to be addressed? *`  
**Type:** multi-select (checkbox)  
**Required:** Yes — user must select **at least one** checkbox.

### Checkbox Options

- `[ ] Deck`
- `[ ] Siding`
- `[ ] Fence / Gate`
- `[ ] Exterior Structures (Trellis / Arbor / Gazebo / Pergola)`
- `[ ] Patio Furniture (Teak / Hardwood)`
- `[ ] Hardscape (Pressure Washing)`
- `[ ] Other`

If `Other` is selected, show an additional text field:

- **Other (please describe)**  
  - Type: single-line text  
  - Required: No  
  - Storage: `surfaces_other_text__c`

### Storage

- **Field:** `surfaces_multi__c`  
- **Type:** multi-select / text array  
- **Values (canonical keys):**
  - `deck`
  - `siding`
  - `fence_gate`
  - `structures`
  - `furniture`
  - `hardscape`
  - `other`

### 3.1 Deck Details (Optional Sub-Section)

This subsection is **always visible** in the UI (no conditional logic), and remains **optional**.

**Label:** `Additional siding details (required)`  
**Type:** multi-select (radio)  
**Required:** No

Was your siding built before 1978? 
Radio:

- `( ) Yes`
- `( ) No`
- `( ) I'm not sure`

---

## 4. Project Timing

**Label:** `When are you planning to start? *`  
**Type:** single-select (radio)  
**Required:** Yes

Options:

- `( ) ASAP`
- `( ) Within 1 month`
- `( ) Within 3 months`
- `( ) Just exploring options`

**Storage:**

- Field: `project_timing__c`  
- Values:
  - `asap`
  - `within_1_month`
  - `within_3_months`
  - `just_exploring`

> Used for basic intent banding (hot / warm / exploratory) and future follow-up cadences.

---

## 5. Additional Project Description

**Label:** `Additional project description`  
**Type:** multi-line text area  
**Required:** No

**Storage:** `project_notes__c`

> Free-text for nuances, special conditions, HOA rules, access constraints, etc.

---

## 6. Contact Info

**Section label:** `Contact Info`  

All starred fields in this section are **required**.

### Fields

- **First name \***  
  - Type: single-line text  
  - Storage: `first_name__c`

- **Last name \***  
  - Type: single-line text  
  - Storage: `last_name__c`

- **Company name**  
  - Type: single-line text  
  - Required: No (can be used by commercial or residential customers)  
  - Storage: `company_name__c`

- **Job title**  
  - Type: single-line text  
  - Required: No  
  - Storage: `job_title__c`

- **Phone number for call or text \***  
  - Type: single-line text (phone)  
  - Storage: `phone_primary__c`

- **Other phone number**  
  - Type: single-line text (phone)  
  - Required: No  
  - Storage: `phone_secondary__c`

- **Email \***  
  - Type: single-line text (email)  
  - Storage: `email__c`

> Company Name and Job Title are **always visible**, even for Residential users; they provide extra context but are optional in all cases.

---

## 7. Relationship to the Property

**Label:** `What is your relationship to this property? *`  
**Type:** single-select (radio)  
**Required:** Yes

Options (always visible for both Residential and Commercial):

- `( ) Owner / Landlord`
- `( ) Tenant`
- `( ) Property Manager`
- `( ) Contractor`
- `( ) Realtor`
- `( ) Architect`

**Storage:**

- Field: `property_relationship__c`  
- Values:
  - `owner_landlord`
  - `tenant`
  - `property_manager`
  - `contractor`
  - `realtor`
  - `architect`

> This field gives estimators immediate context about who they’re dealing with, without driving routing logic in Phase 1 or 2.

---

## 8. How Did You Hear About Us?

**Label:** `How did you hear about us?`  
**Type:** dropdown (with an optional “Other” text field)  
**Required:** Optional (spec assumes **not required**).

Suggested dropdown values:

- `-- None --`
- `Google Search`
- `Yelp`
- `Referral`
- `Repeat Customer`
- `Social Media`
- `Other`

If `Other` is selected, show:

- **Please describe** (single-line text)

**Storage:**

- Field: `lead_source_detail__c`  
- Value: either the dropdown value or the text of “Other (describe)`.

> Note: The primary Salesforce Lead Source should still be driven by UTMs/campaigns; this field is for human-readable clarification.

---

## 9. Other Comments

**Label:** `Other comments`  
**Type:** multi-line text area  
**Required:** No  

**Storage:** `other_comments__c`

> Use this for anything that doesn’t fit into “Additional project description” but customers often want to mention (e.g., “We will be out of town next week, email is best,” etc.).

---

## 10. SMS Consent

**Label (example):**  
`I opt-in to receive SMS messages from Cal Preserving with updates and reminders. You can opt-out at any time by replying with STOP. Messages and data rates may apply.`

**Type:** single checkbox  
**Required:** No (must not be pre-checked for compliance).

**Storage:**

- Field: `sms_opt_in__c`  
- Values: `true` / `false`

> This should integrate with whatever SMS platform you are using so opt-in status is preserved and respected.

---

## Phase Compatibility Summary

This v1 form is **phase-stable** across the Google Ads rollout:

- **Phase 1 — Bay Area, Mixed Persona**  
  - Property Type captured but not yet used for separate campaigns.  
  - Surfaces and Primary Surface mapping align to `campaign_master_phase1`.

- **Phase 2 — Bay Area + Fringe, Mixed Persona**  
  - Same form. Geographical differences are driven by LP URL and campaign targeting, not by the form.

- **Phase 3 — Bay Area + Fringe, Residential & Commercial Personas**  
  - Property Type + Surfaces + Address are used to map into residential vs commercial campaign/LP flows.  
  - No structural change to the form is required.

This MDX file represents the **authoritative specification** for the estimate request form used on all Google Ads landing pages.


This MDX file represents the **authoritative specification** for the estimate request form used on all Google Ads landing pages.


SFDC Logic:

IF Siding is selected THEN
    Primary = Siding

ELSE IF Deck is selected AND Siding is NOT selected THEN
    Primary = Deck

ELSE IF Structures is selected
        AND Siding is NOT selected
        AND Deck is NOT selected THEN
    Primary = Structures

ELSE IF Furniture is selected
        AND Siding is NOT selected
        AND Deck is NOT selected
        AND Structures is NOT selected
        AND Pressure is NOT selected THEN
    Primary = Furniture   // only Furniture

ELSE IF Pressure is selected
        AND Siding is NOT selected
        AND Deck is NOT selected
        AND Structures is NOT selected
        AND Furniture is NOT selected THEN
    Primary = Pressure    // only Pressure

// (we never have "no surfaces selected" because the form forces ≥ 1 choice)
