# 03_05 – RACI Matrix (Marketing / Web / Salesforce)

Roles:

- **MKT** – Marketing Team (Google Ads, SEO, content)
- **WEB** – Web Team (WordPress, PHP handler, LP implementation)
- **SFDC** – Salesforce Team (CRM, web-to-lead, attribution, routing)

Legend:

- **R** – Responsible (does the work)
- **A** – Accountable (final decision)
- **C** – Consulted
- **I** – Informed

---

## 1. Google Ads Campaign Architecture

| Task                                           | MKT | WEB | SFDC |
|-----------------------------------------------|:---:|:---:|:----:|
| Define campaign & ad group taxonomy           | A/R | I   | C    |
| Define keywords & negatives                   | A/R | I   | C    |
| Define LP mapping by campaign/persona/surface | A/R | C   | I    |
| Configure Google Ads campaigns                | A/R | I   | I    |

---

## 2. Landing Pages (Paid LP Track)

| Task                                              | MKT | WEB | SFDC |
|---------------------------------------------------|:---:|:---:|:----:|
| Define LP copy & structure                        | A/R | C   | I    |
| Implement LP in WordPress/Elementor               | C   | A/R | I    |
| Ensure LP URLs follow mapping spec                | C   | A/R | I    |
| Add tracking scripts (Google Ads, GA4, etc.)      | A/R | C   | I    |

---

## 3. Web Form & PHP Handler

| Task                                             | MKT | WEB | SFDC |
|--------------------------------------------------|:---:|:---:|:----:|
| Define form fields & UX                          | A/R | C   | C    |
| Implement form UI (Elementor/front-end)          | C   | A/R | I    |
| Implement PHP handler endpoint                   | I   | A/R | C    |
| Implement reCAPTCHA validation                   | I   | A/R | I    |
| Map PHP fields → Salesforce web-to-lead payload  | I   | R   | A    |
| Decide on duplicate handling in SF               | I   | I   | A/R  |
| Maintain Salesforce web-to-lead config           | I   | I   | A/R  |

---

## 4. Attribution & Reporting (High-Level)

| Task                                         | MKT | WEB | SFDC |
|----------------------------------------------|:---:|:---:|:----:|
| Define reporting requirements                | A/R | I   | C    |
| Configure UTM field storage & mapping        | C   | I   | A/R  |
| Build CRM reports/dashboards                 | C   | I   | A/R  |
| Interpret performance & optimize campaigns   | A/R | I   | C    |

---

## 5. QA & Go-Live

| Task                                                     | MKT | WEB | SFDC |
|----------------------------------------------------------|:---:|:---:|:----:|
| Test LP → form UX                                        | A/R | R   | I    |
| Test PHP → SFDC web-to-lead delivery                     | I   | R   | A/R  |
| Verify SFDC field mapping & lead creation                | I   | C   | A/R  |
| Approve go-live for campaigns (all phases)               | A/R | I   | C    |
| Monitor first-week leads & flag issues                   | A/R | C   | C    |
