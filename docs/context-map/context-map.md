# Viora — Recommended Context Map

Viora recommended Context Map: **9 bounded contexts, 14 relationships, 4 external integrations**. Crop Load Regulation & Thinning Advisory is the primary core context (thick border, OHS); Phenology and Harvest Settlement are the remaining core contexts; four supporting and two generic contexts complete the map. No Shared Kernel is applied.

## Quick path

- **Ownership lookup:** find the bounded context in `## Bounded contexts`, then follow its rows in `## Relationships` and `## External integrations`.
- **Allowed direction:** every arrow points **upstream -> downstream**; upstream supplies, downstream consumes.
- **Partnership is closed:** only `bc2 <-> bc1` and `bc2 <-> bc3` are Partnership (mutual). Do not add more.
- **bc1 exposes events only:** after the removal-guard inversion, bc1 publishes domain events and exposes no query contract. Do not add `bc1 -> bc4`.
- **Forbidden patterns:** no new Shared Kernel without explicit approval; no Conformist where the downstream keeps its own language (use C/S); externals only via the listed ACL/PL/OHS entries.

## Bounded contexts

| ID | Name | Type | Extra |
|----|------|------|-------|
| bc1 | Crop Load Regulation & Thinning Advisory | Core primario | OHS |
| bc2 | Phenology & Historical Bearing Analytics | Core | — |
| bc3 | Harvest Settlement & Performance Reporting | Core | — |
| bc4 | Olive Orchard & Plot Management | Supporting | OHS |
| bc5 | Agroclimatic Telemetry & Sensor Monitoring | Supporting | — |
| bc6 | Cooperative Operations & Territorial Intelligence | Supporting | — |
| bc7 | User Profiles | Supporting | — |
| bc8 | Subscription & Cooperative Membership | Generic | OHS |
| bc9 | Identity & Access Management | Generic | OHS + PL |

> bc1 is the primary context (thick border in the diagram).

## Relationships (upstream -> downstream)

Rule: **arrow points upstream -> downstream.**

| ID | Upstream -> Downstream | Pattern |
|----|------------------------|---------|
| e1 | bc9 -> bc7 | CF |
| e2 | bc7 -> bc8 | C/S |
| e3 | bc7 -> bc6 | C/S |
| e4 | bc8 -> bc4 | C/S |
| e5 | bc8 -> bc6 | C/S |
| e6 | bc4 -> bc5 | C/S |
| e7 | bc4 -> bc2 | C/S |
| e8 | bc4 -> bc1 | C/S |
| e9 | bc2 <-> bc1 | Partnership (mutual) |
| e10 | bc2 <-> bc3 | Partnership (mutual) |
| e11 | bc1 -> bc3 | C/S |
| e12 | bc1 -> bc6 | C/S |
| e13 | bc5 -> bc6 | C/S |
| e14 | bc5 -> bc2 | C/S |

Legend:

| Acronym | Meaning |
|---------|---------|
| C/S | Customer/Supplier |
| CF | Conformist |
| OHS | Open Host Service |
| PL | Published Language |
| ACL | Anticorruption Layer |
| Partnership | Mutual dependency with coordinated planning |

No Shared Kernel applied in recommended map.

## External integrations

| ID | Integration | Pattern |
|----|-------------|---------|
| EXT01 | Payment Gateway Service -> bc8 | ACL + OHS |
| EXT02 | Satellite Basemap & GIS Provider -> bc4 | PL (GeoJSON) |
| EXT03 | Agroclimatic Weather API (SENAMHI) -> bc5 | ACL |
| EXT04 | bc9 -> Transactional Mail Service | ACL |

## Discarded alternatives

### A: Shared Kernel between Phenology (bc2) and Harvest Settlement (bc3)

- **Candidate:** Shared Kernel owning `AgronomicReport`, `HistoricalHarvestEntry`, `BiennialBearingIndex`.
- **Why discarded:**
  - Overlap was a documentation defect, not a design decision: the aggregate step had absorbed Phenology content into `AgronomicReport`.
  - Shared Kernel is the highest-coupling pattern: it forces both contexts to coordinate on every shared-model change, including any `BiennialBearingIndex` formula adjustment.
  - Once the aggregate was separated, the real mutual dependency is expressed as Partnership with minimum coupling.

### B: Cooperative Operations (bc6) as Conformist of its four upstream (bc8, bc7, bc1, bc5)

- **Candidate:** CF on all four inbound relationships to bc6.
- **Why discarded:**
  - The CF vs C/S test is whether the downstream adopts the upstream language or keeps its own.
  - bc6 ubiquitous language (`Cooperative`, `CooperativeMember`, `AuthorizedManager`, `TerritorialRiskMatrix`, `EarlyIntakeProjection`, `SamplingCoverageRate`, `SectorZone`) borrows zero terms from its upstream vocabularies.
  - bc6 translates four distinct vocabularies into its own territorial model, so C/S is kept on all four relationships.
  - **Note on scope.** `CorporateLicensingPlan` and `InvitationCode` were previously listed here as bc6 terms. They now belong to bc3 (`CooperativeLicense` / `InvitationCodeBatch`), because the corporate quota cannot be validated against a membership roll that does not yet contain the recipients. This does not weaken the argument above: bc6 still owns every term in its own vocabulary, and the relationship classification is unchanged.

## Rules for agents

- [ ] Arrows always read **upstream -> downstream**.
- [ ] Translate-does-not-adopt => **C/S, not CF**.
- [ ] No new Shared Kernel without explicit approval.
- [ ] Partnership only for **bc2 <-> bc1** and **bc2 <-> bc3**.
- [ ] Externals only via the listed **ACL / PL / OHS** entries.
- [ ] OHS providers: **bc1, bc4, bc8, bc9** (bc9 also PL).

## Change log

| Date | Change |
|---|---|
| 2026-09-12 | Added `e14 bc5 -> bc2` (C/S). Telemetry supplies hourly temperature series to Phenology's Erez chill model; implemented on both sides and documented as connection C08, but absent from the map. Phenology translates readings into `ChillPortions` without adopting Telemetry's model, so C/S applies. |
| 2026-09-12 | `bc1 -> bc4` evaluated and rejected. The plot-removal guard was inverted: bc4 removes freely and publishes `PlotRemoved`; bc1 compensates by voiding pending prescriptions. No query contract crosses back. |
| 2026-09-12 | `bc3 -> bc6` evaluated and rejected. The consuming handler in bc6 had no state, method or event to support the calibration it claimed, so the consumption was withdrawn rather than formalised. |

> Open question: bc1 is listed as OHS while bc9 is OHS + PL. After the inversion, bc1's public surface is its eleven domain events consumed by three contexts. If a published, stable schema is what qualifies bc9 for PL, bc1 qualifies equally. Decide whether to align the classification or document why they differ.

## Sources

- `01-context-map-elegido.drawio` — diagram `Context Map elegido` (`viora-context-map-main`)
- `02-alternativas-descartadas.drawio` — diagram `Alternativas descartadas` (`viora-context-map-alternatives`)
