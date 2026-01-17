#!/bin/bash

# Create GitHub Project and Issues from project-plan.md
# Repository: intragoinc/cp-mktg-google-ads

REPO="intragoinc/cp-mktg-google-ads"
PROJECT_TITLE="Google Ads Initiative (Phases 1-3)"

echo "=== Creating GitHub Project: $PROJECT_TITLE ==="

# Create the project
PROJECT_URL=$(gh project create --owner intragoinc --title "$PROJECT_TITLE" --format json 2>/dev/null | grep -o '"url":"[^"]*"' | cut -d'"' -f4)

if [ -z "$PROJECT_URL" ]; then
    echo "Project may already exist or failed to create. Checking existing projects..."
    PROJECT_NUM=$(gh project list --owner intragoinc --format json | grep -B5 "Google Ads" | grep '"number"' | head -1 | grep -o '[0-9]*')
else
    PROJECT_NUM=$(echo "$PROJECT_URL" | grep -o '[0-9]*$')
    echo "Created project: $PROJECT_URL"
fi

echo "Project Number: $PROJECT_NUM"

# Function to create an issue
create_issue() {
    local title="$1"
    local section="$2"
    local phase="$3"
    local owner="$4"
    local notes="$5"
    local low="$6"
    local high="$7"

    # Build labels
    local labels="phase-${phase},${section}"
    if [ "$owner" != "—" ] && [ -n "$owner" ] && [ "$owner" != "Varies" ]; then
        local owner_label=$(echo "$owner" | tr '[:upper:]' '[:lower:]' | sed 's/ + /,owner-/g' | sed 's/^/owner-/')
        labels="${labels},${owner_label}"
    fi

    # Build body
    local body="## Task Details

**Section:** ${section}
**Phase:** Phase ${phase}
**Owner:** ${owner}

### Estimate
- **Low:** ${low} hrs
- **High:** ${high} hrs

### Notes
${notes}

---
*Created from project-plan.md*"

    echo "Creating issue: $title"

    # Create the issue
    ISSUE_URL=$(gh issue create \
        --repo "$REPO" \
        --title "$title" \
        --body "$body" \
        --label "$labels" \
        2>&1)

    echo "  → $ISSUE_URL"
}

# Ensure labels exist
echo ""
echo "=== Creating labels ==="
gh label create "phase-1" --repo "$REPO" --color "0E8A16" --description "Phase 1: Bay Area, Mixed Persona" 2>/dev/null || true
gh label create "phase-2" --repo "$REPO" --color "1D76DB" --description "Phase 2: Add Fringe Geos" 2>/dev/null || true
gh label create "phase-3" --repo "$REPO" --color "D93F0B" --description "Phase 3: Persona Split" 2>/dev/null || true
gh label create "pre-build" --repo "$REPO" --color "FBCA04" --description "Pre-Build Setup & Coordination" 2>/dev/null || true
gh label create "landing-page" --repo "$REPO" --color "5319E7" --description "Landing Page Build" 2>/dev/null || true
gh label create "salesforce" --repo "$REPO" --color "006B75" --description "Salesforce Integration" 2>/dev/null || true
gh label create "google-ads" --repo "$REPO" --color "B60205" --description "Google Ads Campaign Build" 2>/dev/null || true
gh label create "qa-launch" --repo "$REPO" --color "C2E0C6" --description "QA & Launch" 2>/dev/null || true
gh label create "owner-brent" --repo "$REPO" --color "EDEDED" --description "Owner: Brent (Lead)" 2>/dev/null || true
gh label create "owner-aksha" --repo "$REPO" --color "EDEDED" --description "Owner: Aksha (Marketing)" 2>/dev/null || true
gh label create "owner-web" --repo "$REPO" --color "EDEDED" --description "Owner: Web Developer" 2>/dev/null || true
gh label create "owner-sfdc" --repo "$REPO" --color "EDEDED" --description "Owner: Salesforce Developer" 2>/dev/null || true
gh label create "owner-all" --repo "$REPO" --color "EDEDED" --description "Owner: All Team Members" 2>/dev/null || true

echo ""
echo "=== Creating Phase 1 Issues ==="

# 1.1 Pre-Build Setup & Coordination
echo ""
echo "--- 1.1 Pre-Build Setup & Coordination ---"
create_issue "Kickoff meeting - align on scope, URLs, timeline" "pre-build" "1" "All" "—" "0.75" "1.5"
create_issue "Confirm LP URL structure with Web" "pre-build" "1" "Brent + Web" "/residential/deck/, etc." "0.75" "1.5"
create_issue "Confirm Salesforce field mapping with SFDC dev" "pre-build" "1" "Brent + SFDC" "Review 03_04_web-php-sfdc-field-contract.md" "0.75" "2.25"
create_issue "Set up Google Ads conversion tracking (verify)" "pre-build" "1" "Aksha" "Confirm existing tracking works" "0.75" "1.5"

# 1.2 Landing Page Build
echo ""
echo "--- 1.2 Landing Page Build ---"
create_issue "Create Elementor global components (hero, form, process, CTA)" "landing-page" "1" "Web" "Reusable across all LPs" "3" "6"
create_issue "Build estimate request form with hidden UTM fields" "landing-page" "1" "Web" "Per 02_17_lp-spec.md" "1.5" "3"
create_issue "Build LP: /residential/deck/" "landing-page" "1" "Web" "From 02_08_lp-deck-residential.md" "1.5" "3"
create_issue "Build LP: /residential/siding/" "landing-page" "1" "Web" "From 02_10_lp-siding-residential.md" "1.5" "2.25"
create_issue "Build LP: /residential/wood-structures/" "landing-page" "1" "Web" "—" "1.5" "2.25"
create_issue "Build LP: /residential/pressure/" "landing-page" "1" "Web" "From 02_12_lp-pressure-residential.md" "1.5" "2.25"
create_issue "Build LP: /residential/ (catch-all)" "landing-page" "1" "Web" "From 02_14_lp-exteriorwood-residential.md" "1.5" "2.25"
create_issue "Mobile optimization & QA for residential LPs" "landing-page" "1" "Web" "Lighthouse 80+ target" "1.5" "3"
create_issue "Thank-you page setup" "landing-page" "1" "Web" "—" "0.75" "1.5"

# 1.3 Salesforce Integration
echo ""
echo "--- 1.3 Salesforce Integration ---"
create_issue "Add/verify custom fields for UTMs" "salesforce" "1" "SFDC" "utm_source__c, utm_campaign__c, etc." "0.75" "2.25"
create_issue "Add custom fields for surfaces, property type" "salesforce" "1" "SFDC" "Multi-select, picklist" "0.75" "1.5"
create_issue "Configure PHP handler or update existing web-to-lead" "salesforce" "1" "SFDC + Web" "Map form → SFDC fields" "1.5" "3"
create_issue "Test form submission → lead creation" "salesforce" "1" "SFDC" "—" "0.75" "1.5"
create_issue "Verify UTM fields populate correctly" "salesforce" "1" "SFDC" "—" "0.75" "1.5"

# 1.4 Google Ads Campaign Build
echo ""
echo "--- 1.4 Google Ads Campaign Build ---"
create_issue "Pause/archive old underperforming campaigns" "google-ads" "1" "Aksha" "Keep for reference" "0.5" "0.75"
create_issue "Create campaign structure (5 campaigns)" "google-ads" "1" "Aksha" "Bay Area Deck, Siding, Structures, Pressure, Catch-All" "1.5" "3"
create_issue "Create ad groups per campaign (3-4 each)" "google-ads" "1" "Aksha" "~15 ad groups total" "2.25" "3.75"
create_issue "Add keywords from campaign-master-phase-1.csv" "google-ads" "1" "Aksha" "47 keywords" "1.5" "2.25"
create_issue "Add negative keywords (campaign + ad group level)" "google-ads" "1" "Aksha" "—" "1.5" "2.25"
create_issue "Write RSA ad copy (3 RSAs per ad group minimum)" "google-ads" "1" "Aksha" "Headlines, descriptions" "3" "6"
create_issue "Configure geo targeting (Bay Area)" "google-ads" "1" "Aksha" "—" "0.75" "1.5"
create_issue "Set initial budgets and bidding strategy" "google-ads" "1" "Aksha" "Manual CPC recommended initially" "0.75" "1.5"

# 1.5 QA & Launch
echo ""
echo "--- 1.5 QA & Launch ---"
create_issue "End-to-end test: Ad → LP → Form → SFDC" "qa-launch" "1" "All" "Per 03_07_qa-matrix.md" "1.5" "3"
create_issue "Test each surface LP (5 tests)" "qa-launch" "1" "Web + SFDC" "Verify lead appears with correct data" "0.75" "1.5"
create_issue "Fix any Phase 1 issues found" "qa-launch" "1" "Varies" "Buffer for fixes" "1.5" "6"
create_issue "Final review and approval (Phase 1)" "qa-launch" "1" "Brent" "—" "0.75" "1.5"
create_issue "Go live Phase 1" "qa-launch" "1" "Aksha" "Enable campaigns" "0.5" "0.75"

echo ""
echo "=== Creating Phase 2 Issues ==="

# 2.1 Campaign Duplication
echo ""
echo "--- 2.1 Campaign Duplication ---"
create_issue "Duplicate Bay Area campaigns → Fringe" "google-ads" "2" "Aksha" "4-5 Fringe campaigns" "1.5" "3"
create_issue "Adjust geo targeting for Fringe" "google-ads" "2" "Aksha" "—" "0.75" "1.5"
create_issue "Update campaign names for Fringe" "google-ads" "2" "Aksha" "—" "0.5" "0.75"
create_issue "Set Fringe-specific budgets" "google-ads" "2" "Aksha" "Lower budget initially" "0.5" "0.75"
create_issue "Review/adjust keywords for Fringe if needed" "google-ads" "2" "Aksha" "—" "0.75" "1.5"

# 2.2 Web & Salesforce
echo ""
echo "--- 2.2 Web & Salesforce (Phase 2) ---"
create_issue "Verify LPs work for Fringe traffic" "landing-page" "2" "Web" "Same LPs, no new builds" "0.5" "0.75"
create_issue "Add utm_geo tracking if not present" "salesforce" "2" "SFDC" "bay_area vs fringe" "0.75" "1.5"
create_issue "Test Fringe ZIP code submission" "salesforce" "2" "SFDC" "—" "0.5" "0.75"

# 2.3 QA & Launch
echo ""
echo "--- 2.3 QA & Launch (Phase 2) ---"
create_issue "Test Fringe campaigns → LP → SFDC" "qa-launch" "2" "All" "—" "0.75" "1.5"
create_issue "Verify geo reporting in SFDC" "qa-launch" "2" "SFDC" "—" "0.5" "0.75"
create_issue "Go live Fringe campaigns" "qa-launch" "2" "Aksha" "—" "0.5" "0.75"

echo ""
echo "=== Creating Phase 3 Issues ==="

# 3.1 Commercial Landing Pages
echo ""
echo "--- 3.1 Commercial Landing Pages ---"
create_issue "Build LP: /commercial/deck/" "landing-page" "3" "Web" "From 02_09_lp-deck-commercial.md" "1.5" "3"
create_issue "Build LP: /commercial/siding/" "landing-page" "3" "Web" "From 02_11_lp-siding-commercial.md" "1.5" "2.25"
create_issue "Build LP: /commercial/wood-structures/" "landing-page" "3" "Web" "—" "1.5" "2.25"
create_issue "Build LP: /commercial/pressure/" "landing-page" "3" "Web" "From 02_13_lp-pressure-commercial.md" "1.5" "2.25"
create_issue "Build LP: /commercial/ (catch-all)" "landing-page" "3" "Web" "From 02_15_lp-exteriorwood-commercial.md" "1.5" "2.25"
create_issue "Update CTA to Request a Proposal on commercial LPs" "landing-page" "3" "Web" "—" "0.75" "1.5"
create_issue "Mobile optimization & QA for commercial LPs" "landing-page" "3" "Web" "—" "1.5" "3"

# 3.2 Campaign Restructure
echo ""
echo "--- 3.2 Campaign Restructure ---"
create_issue "Split Bay Area campaigns by persona" "google-ads" "3" "Aksha" "5 → 10 campaigns" "2.25" "3.75"
create_issue "Split Fringe campaigns by persona" "google-ads" "3" "Aksha" "4 → 8 campaigns" "1.5" "3"
create_issue "Update LP URLs in all campaigns" "google-ads" "3" "Aksha" "Point to correct persona LP" "1.5" "2.25"
create_issue "Adjust ad copy for commercial tone" "google-ads" "3" "Aksha" "Proposal vs Estimate" "2.25" "4.5"
create_issue "Set persona-specific budgets" "google-ads" "3" "Aksha" "~60% residential, 40% commercial" "0.75" "1.5"
create_issue "Add commercial-specific keywords if any" "google-ads" "3" "Aksha" "HOA, property management terms" "0.75" "1.5"

# 3.3 Salesforce Updates
echo ""
echo "--- 3.3 Salesforce Updates ---"
create_issue "Add utm_persona field if not present" "salesforce" "3" "SFDC" "residential vs commercial" "0.75" "1.5"
create_issue "Verify persona reporting works" "salesforce" "3" "SFDC" "—" "0.75" "1.5"
create_issue "Test commercial form submissions" "salesforce" "3" "SFDC" "—" "0.5" "0.75"

# 3.4 QA & Launch
echo ""
echo "--- 3.4 QA & Launch (Phase 3) ---"
create_issue "Test all residential campaign → LP paths" "qa-launch" "3" "All" "5 surfaces × 2 geos" "0.75" "1.5"
create_issue "Test all commercial campaign → LP paths" "qa-launch" "3" "All" "5 surfaces × 2 geos" "0.75" "1.5"
create_issue "Verify CTA differences (Estimate vs Proposal)" "qa-launch" "3" "Web" "—" "0.5" "0.75"
create_issue "End-to-end SFDC lead tests (6 variations)" "qa-launch" "3" "SFDC" "Per 03_07_qa-matrix.md" "0.75" "1.5"
create_issue "Fix any Phase 3 issues" "qa-launch" "3" "Varies" "—" "1.5" "4.5"
create_issue "Final review and approval (Phase 3)" "qa-launch" "3" "Brent" "—" "0.75" "1.5"
create_issue "Go live Phase 3" "qa-launch" "3" "Aksha" "—" "0.5" "0.75"

echo ""
echo "=== Done ==="
echo ""
echo "View your project at: https://github.com/users/intragoinc/projects/"
echo "View issues at: https://github.com/intragoinc/cp-mktg-google-ads/issues"
