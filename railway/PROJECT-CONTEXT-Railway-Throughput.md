# CrowdGatherGo — Railway Throughput: Context & Restart Guide
_Last updated: 14 June 2026. Purpose: a single page to re-load context next time, before working on the railway throughput proposals._

---

## 1. One-paragraph summary
CrowdGatherGo (founder **Atif Hussain**, IIT Kanpur B.Tech CSE + IIM Bangalore MBA; crowdgathergo.com) is an umbrella mobility venture with three arms: **(1) rail throughput** (this project), (2) city traffic interchanges, (3) the Concurrent Unloading Shuttle / road-wagon. The rail concept lifts a saturated double-line trunk corridor toward **~500 train-slots/day on existing running lines** by **slot-based timetabling** plus an optional low-cost safety layer, **WhatsComing** (the locomotive-tracking app, earlier called eKavach). The intended first pitch is to **South Central Railway (SCR), Rail Nilayam, Secunderabad**.

## 2. The concept (mechanism)
**Four building blocks — #1 and #2 are independently deployable and build up to #3:** (1) **seconds-accurate km-post timetable** — accurate to the second at every km post, physics-interpolated via spreadsheet formulae from non-stop trial runs (standalone: a sharper WTT/Master Chart + punctuality benchmark); (2) **live seconds-deviation feedback** to loco drivers so they self-correct (standalone: punctuality on today's network); (3) **slot-based 5-min-headway timetabling** — the throughput goal that 1 & 2 enable; (4) **WhatsComing** — optional locomotive-tracking app to pack trains tighter with improved safety (formerly called eKavach).
- **Uniform main-line speed.** Every *through* train runs the main line at the section's non-stop speed, evenly spaced on a **5-minute headway** — so the main line behaves like a homogeneous "freeway."
- **Stops happen on loops, not the main line.** A train that must halt peels onto an **elongated station loop** (~1.5 km), stops, and rejoins. Because stopping costs time, it **drops to a later slot** → "variable gaps under a uniform headway."
- **This removes the real capacity-killer (speed heterogeneity) from the main line — without needing a Dedicated Freight Corridor.**
- **WhatsComing** (loco-tracking app) = a frugal, RailTel-backed driver gap-awareness layer (treats every track strictly one-way); a complement / pre-stage to formal Kavach. Any safety-bearing role needs **RDSO** clearance.

## 3. Key numbers
- **~80 s** running-time lost per stop (decel ~1.5 km + accel ~2.9 km from ~90 km/h) — from `stops-physics.xlsx`; this is the "slot drop."
- **~500–576 train-slots/day** per corridor (4 classes: goods/non-stop, Rajdhani/Duronto, superfast/express, local) — from the NDLS–MAS worked model.
- Line-capacity basis: **~40 coaches/min @ 60 km/h** on a double line (traffic-stream style model).
- Context figures: rail freight uses **75–90% less energy** than road; rail freight modal share **~27%** vs **45%-by-2030** (National Rail Plan); India net oil-import bill **~$100 bn/yr**, **~89%** crude import-dependent; ABS gives ~2.5-min headway / +15–20% capacity at **~₹2.5 cr/route-km**; track doubling **~₹20 cr/km**.

## 4. Honest preconditions & limits (state these openly — officers will probe)
- **Loop works:** elongate stopping-station loops (~1.5 km) + raise turnout speeds. So it is *not* "zero infrastructure" — it's "longer loops, not new running lines."
- **Freight homogenisation:** sub-speed freight must be re-powered or run in dedicated windows. **Loaded heavy-haul coal physically cannot reach trunk passenger speed regardless of power — this is the real residual limit;** the pilot must quantify how much traffic it affects. (Coal is ~40% of goods on Kazipet–Balharshah.)
- **Safety:** tighter gaps + any WhatsComing role require **RDSO** sign-off.
- **Robustness:** at 5-min headway delays propagate fast — must be stress-tested in simulation.
- **Junctions/terminals** still bound the corridor and must be modelled.

## 5. Evidence in hand
- **NDLS–MAS slot model** — a second-accurate 5-minute-slot Master Chart for New Delhi→Jhansi→Bhopal→Nagpur→Warangal→Vijayawada→Chennai (chart in `IR Throughput Enhancement proposal.pptx`; exported as `ndls-mas-slot-chart.png`).
- **`stops-physics.xlsx`** — the stop-delay kinematics.
- **IR precedent:** Western Railway's **Surat–Vadodara** throughput programme (loop extensions into block sections, freight-speed upgrades, automatic signalling/CTC) — same throughput-over-speed philosophy, already done inside IR.

## 6. Council critique → how it was resolved
The LLM-council's two load-bearing objections, and the answers now baked into the proposal:
1. *"Heterogeneity makes the throughput physically unreachable."* → Answered: heterogeneity is absorbed at the loops via uniform main-line speed; no DFC needed.
2. *"Outsider; lead with a zero-risk offline model."* → Adopted: **offline-first** — the model must reproduce SCR's current **Master Chart** before proposing change; and a working NDLS–MAS model + IR precedent already exist.
(Full reasoning: `council-report-20260609.html` incl. the green "Re-evaluation" banner; `council-transcript-20260609.md`.)

## 7. Where to pitch — people & network
**SCR pilot (post 1-June-2026 bifurcation → only 3 divisions: Secunderabad, Hyderabad, Nanded):**
- GM SCR **Sanjay Kumar Srivastava** (IRSE 1988); Addl GM **Satya Prakash**; DRM Secunderabad **R. Gopalakrishnan** (IRTS). Pitch the **PCOM** (operations) + **Sr. DOM/DRM Secunderabad** for a divisional pilot.
- Pilot sections: **Kazipet–Wadi** (primary, single-zone), **Balharshah–Kazipet** (GT route, segment of the NDLS–MAS model, ~40% coal), **Mudkhed–Dhone** (Nanded, ~167% utilisation — highest published figure).

**National network:**
- **CRIS (New Delhi)** — owns **SATSaNG**, the software behind IR's **Zero-Based Time Table**. The natural *technical home*; your idea is a sharper version of what they already do. **Lead here.**
- **Railway Board:** Member (Operations & Business Development) **Hari Shankar Verma** (IRTS 1987; owns throughput / Mission Raftaar) — the apex owner. Chairman & CEO **Jaya Verma Sinha** (operations background, receptive).
- **RDSO (Lucknow)** — safety/signalling gatekeeper for WhatsComing; also runs InnoRail. **IRISET (Secunderabad)** — S&T credibility ally, local.
- **Formal channel:** **Rail Tech Portal / "StartUps for Railways"** — submit digitally, keep your IP, get pilot funding. Cleanest no-cold-call entry; creates a dated record.
- **Professional bodies:** **IRSE–IRSTE** (signalling — best room for the WhatsComing/headway half), **IPWE** (permanent way — for the loop/turnout works).

**Suggested play:** submit on the Rail Tech Portal + brief SCR PCOM (warm/local) in parallel → align technically with CRIS → use events to reach the Board's Ops member.

## 8. Railway events in India, ranked for this proposal (dates as of mid-2026)
1. **InnoRail India 2026** — 26–28 Nov 2026, **Lucknow** (RDSO). Best idea-pitch fit; participation window ~26 Jun 2026.
2. **IRSE–IRSTE International Railway Convention & Exhibition** — was 10–12 Jun 2026, **New Delhi** (just concluded; next ~2028). Top venue for the **WhatsComing/signalling** half; reaches RDSO + Board S&T.
3. **IREE** — biennial, ~Oct 2027, **New Delhi** (last 15–17 Oct 2025; CII + MoR). Flagship; max Board-level networking.
4. **Rail Analysis Innovation & Excellence Summit** — next ~Jan 2027, **New Delhi** (7th ed. was 30 Jan 2026). Speaking slots to present the idea.
5. **RailTrans Expo 2026** — 3–4 Jul 2026, **New Delhi** (Bharat Mandapam). Soonest; MoR-supported.
6. **Bharat Mobility Global Expo 2027** — 4–9 Feb 2027, **Delhi-NCR**. Broad multimodal; high policy visibility, low ops-specificity.
- **IPWE** technical seminars (Pune) — periodic; relevant for the track/loop dimension.

## 9. Deliverables already produced  (in `E:\Claude-Work\Outputs\Indian-Railways-Throughput\`)
- `CrowdGatherGo_SCR_Proposal_2026-06-09_v2.docx` — the proposal (embeds the NDLS–MAS chart; uses IR vocabulary: WTT, Master Chart, precedence/crossing, SRT).
- `council-report-20260609.html` + `council-transcript-20260609.md` — critique & re-evaluation.
- `railways-for-india.html` + `ndls-mas-slot-chart.png` — public explainer page.
- Website: `E:\Claude-Work\Outputs\website\index.html` (rail section refreshed + links to the explainer), `sitemap.xml` updated, copy of explainer + chart placed there.

## 10. IR operating vocabulary to keep using (signals fluency)
**Working Time Table (WTT)**, **Master Chart** (24-h time-distance train graph), **sectional running time (SRT)**, **precedence / crossing** (= overtaking at loops), **path / slot**, **block section**, **loop line**, **control office charts**, **traffic & power blocks**, **MPS / PSR / TSR**, **detention**.

## 11. Recommended next steps
1. Build the **Phase-0 offline microsimulation** (Python/SimPy) of **Kazipet–Wadi** from the public WTT, and prove it **reproduces SCR's current Master Chart** — this converts the NDLS–MAS chart from "model" to "validated."
2. **Submit on the Rail Tech Portal** (protect IP, create record) and request a 30-min meeting with **SCR PCOM**.
3. Prepare an **outreach one-pager** (CRIS + Board Ops member + events calendar).
4. Quantify the **heavy-haul windowing** question for the chosen pilot section (the key open risk).

## 12. Source material in this folder (the user's own inputs)
`Overall Summary.txt`, `Detailed-Explanation.txt` (the rebuttals/addendum), `stops-physics.xlsx`, `IR Throughput Enhancement proposal.pptx` (NDLS–MAS chart, capacity model, Surat–Vadodara precedent, train-class counts), `IR Throughput Enhancement - detailed procedure.docx`, `eKavach\*` decks (the WhatsComing app; folder on disk still named eKavach), `Railway SBC-MAS route\*` data.
_Note: `.doc/.docx/.pptx/.xlsx` are binary; if their full text is needed in a future session, export the key ones to **PDF** (the assistant can read PDFs and images directly)._

## 13. Seed prompt to restart next time
> "Resume CrowdGatherGo railway throughput. Read PROJECT-CONTEXT-Railway-Throughput.md in E:\Claude-Work\Outputs\Indian-Railways-Throughput. The concept is slot-based 5-min-headway timetabling (uniform main-line speed, stops absorbed at elongated loops, no DFC) + optional WhatsComing app, pitched to SCR Rail Nilayam. Today I want to: <X>."
