---

## 2. Web → PHP → Salesforce Field Contract

**Suggested file:** `docs/03_04_web-php-sfdc-field-contract.md`

```md
# 03_04 – Web ↔ PHP ↔ Salesforce Field Contract

This document defines the **canonical payload** and mapping between:

1. **Landing Page / Web Form** (Elementor / WP)
2. **PHP Handler** (WordPress server)
3. **Salesforce Web-to-Lead** (Lead object fields)

The goal is to ensure **marketing**, **web**, and **Salesforce** teams all work from the same contract.

---

## 1. Core Contact & Location Fields

| # | UX Label                            | HTML Name            | PHP Var                | Salesforce Field              | Type        | Notes |
|---|-------------------------------------|----------------------|------------------------|------------------------------|------------|-------|
| 1 | Street *                            | `street`            | `$street`             | `Street` (standard)          | text       | Required; from autocomplete. |
| 2 | City *                              | `city`              | `$city`               | `City` (standard)            | text       | Required. |
| 3 | State *                             | `state`             | `$state`              | `State` (standard)           | text       | Required (`CA`, `CA`, etc.). |
| 4 | Zip *                               | `postal_code`       | `$postal_code`        | `PostalCode` (standard)      | text       | Required; 5-digit ZIP. |
| 5 | First name *                        | `first_name`        | `$first_name`         | `FirstName` (standard)       | text       | Required. |
| 6 | Last name *                         | `last_name`         | `$last_name`          | `LastName` (standard)        | text       | Required. |
| 7 | Company name                        | `company`           | `$company`            | `Company` (standard)         | text       | Optional; used by res + commercial. |
| 8 | Job title                           | `job_title`         | `$job_title`          | `Title` (standard)           | text       | Optional context, especially for PM / HOA. |
| 9 | Phone number for call or text *     | `phone_primary`     | `$phone_primary`      | `Phone` (standard)           | phone      | Required. |
|10 | Other phone number                  | `phone_secondary`   | `$phone_secondary`    | `MobilePhone` or custom      | phone      | Optional. |
|11 | Email *                             | `email`             | `$email`              | `Email` (standard)           | email      | Required; lead identity key. |

---

## 2. Property & Project Fields

| # | UX Label                                  | HTML Name            | PHP Var                 | Salesforce Field                   | Type         | Notes |
|---|-------------------------------------------|----------------------|-------------------------|------------------------------------|-------------|-------|
|12 | What is the type of the property? *       | `property_type`      | `$property_type`        | `Property_Type__c`                 | picklist     | Values: `residential`, `commercial`. Collected Phase 1–3. |
|13 | Surfaces to be addressed * (multi-select) | `surfaces[]`         | `$surfaces` (array)     | `Surfaces__c` (multi-select)      | multi-select | Canonical values below. |
|14 | Other (please describe)                   | `surfaces_other`     | `$surfaces_other`       | `Surfaces_Other_Text__c`          | text         | Only when “Other” checked. |
|15 | When are you planning to start? *         | `project_timing`     | `$project_timing`       | `Project_Timing__c`               | picklist     | Values: `asap`, `within_1_month`, `within_3_months`, `just_exploring`. |
|16 | Additional project description            | `project_notes`      | `$project_notes`        | `Project_Notes__c`                | textarea     | Free text. |
|17 | Other comments                            | `other_comments`     | `$other_comments`       | `Other_Comments__c`               | textarea     | Free text. |
|18 | Relationship to property *                | `property_relation`  | `$property_relation`    | `Property_Relationship__c`        | picklist     | Values: `owner_landlord`, `tenant`, `property_manager`, `contractor`, `realtor`, `architect`. |

### 2.1 Surfaces Canonical Values

Web must send the **canonical keys**; Salesforce stores them as a multi-select field.

| Checkbox Label                                   | HTML Value      | SF Stored Value  |
|--------------------------------------------------|-----------------|------------------|
| Deck                                             | `deck`          | `deck`           |
| Siding                                           | `siding`        | `siding`         |
| Fence / Gate                                     | `fence_gate`    | `fence_gate`     |
| Exterior Structures (Trellis / Arbor / Gazebo…)  | `structures`    | `structures`     |
| Patio Furniture (Teak / Hardwood)                | `furniture`     | `furniture`      |
| Hardscape (Pressure Washing)                     | `hardscape`     | `hardscape`      |
| Other                                            | `other`         | `other`          |

---

## 3. Marketing & Attribution Fields

These are typically **hidden fields** populated by JS, UTM, or LP logic.

| # | UX Label / Source        | HTML Name         | PHP Var             | Salesforce Field                | Type   | Notes |
|---|--------------------------|-------------------|---------------------|---------------------------------|--------|-------|
|19 | UTM Source               | `utm_source`      | `$utm_source`       | `UTM_Source__c`                 | text   | Filled from querystring. |
|20 | UTM Medium               | `utm_medium`      | `$utm_medium`       | `UTM_Medium__c`                 | text   | e.g. `cpc`. |
|21 | UTM Campaign             | `utm_campaign`    | `$utm_campaign`     | `UTM_Campaign__c`               | text   | Maps to Google Ads campaign. |
|22 | UTM Term                 | `utm_term`        | `$utm_term`         | `UTM_Term__c`                   | text   | Keyword (if available). |
|23 | UTM Content              | `utm_content`     | `$utm_content`      | `UTM_Content__c`                | text   | Ad variation / asset group hints. |
|24 | Landing Page Slug        | `lp_slug`         | `$lp_slug`          | `LP_Slug__c`                    | text   | e.g. `residential/deck`. |
|25 | Full Landing Page URL    | `lp_url`          | `$lp_url`           | `LP_URL__c`                     | text   | Full URL for debugging. |
|26 | GCLID (if present)       | `gclid`           | `$gclid`            | `GCLID__c`                      | text   | For Google Ads offline conversion. |
|27 | Original Referrer        | `referrer`        | `$referrer`         | `Original_Referrer__c`          | text   | From `document.referrer`. |
|28 | Session ID / UUID        | `session_id`      | `$session_id`       | `Session_Id__c`                 | text   | Used for debugging and cross-joining logs. |

> **Ownership:** You stated Salesforce Team owns UTM mapping. That means Web simply passes raw UTMs; Salesforce defines final fields, mappings, and reports.

---

## 4. Consent & Compliance Fields

| # | UX Label                                                                                     | HTML Name      | PHP Var          | Salesforce Field   | Type      | Notes |
|---|----------------------------------------------------------------------------------------------|----------------|------------------|--------------------|----------|-------|
|29 | I opt-in to receive SMS messages…                                                            | `sms_opt_in`   | `$sms_opt_in`    | `SMS_Opt_In__c`    | boolean   | `true` if checked, else `false`. |
|30 | reCAPTCHA Token                                                                              | `g-recaptcha-response` | `$recaptcha_token` | *(handled by PHP only)* | text      | Validated server-side; not sent to SF. |

---

## 5. PHP Handler Responsibilities (Summary)

The PHP endpoint MUST:

1. Validate required fields.
2. Validate `g-recaptcha-response` with Google.
3. Normalize canonical values (surfaces, property type, relationship).
4. Build the **web-to-lead POST payload** using the Salesforce field API names.
5. POST via HTTPS to SF Web-to-Lead.
6. Optionally log failures and/or success (per your final infra choice).
7. Return a **simple success/thank-you** response or redirect to a “Thank You” page.

This contract is **phase-stable** and compatible with all phases (1–3) of the Google Ads rollout.
