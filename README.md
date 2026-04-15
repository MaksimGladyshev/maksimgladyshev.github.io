# Responsibility for Ocean Plastic

A popular science website on Dutch plastic pollution and causal responsibility.

## Project structure

```
responsibility-ocean-plastic/
├── index.html                  ← entry point (redirects to page 1)
├── css/
│   └── shared.css              ← full design system (tokens, nav, components)
├── js/
│   └── shared.js               ← scroll reveal + progress bar
├── img/                        ← images (run download-images.sh to populate)
│   ├── hero-plastic.jpg
│   ├── sorting-facility.jpg
│   ├── container-port.jpg
│   ├── plastic-bottles.jpg
│   └── riverbank-litter.jpg
├── pages/
│   ├── 01-evidence.html        ← COMPLETE — Dutch plastic waste data
│   ├── 02-causality.html       ← SKELETON — actual causality theory
│   ├── 03-model.html           ← SKELETON — interactive causal model
│   └── 04-references.html      ← SKELETON — all 15 references
└── download-images.sh          ← run once to fetch images from Unsplash
```

## Getting started

```bash
# 1. Download images
bash download-images.sh

# 2. Serve locally (any static server works)
npx serve .
# or
python3 -m http.server 8000
# then open http://localhost:8000
```

## Design system

**Fonts:** DM Serif Display (headings) · JetBrains Mono (labels, data) · Source Serif 4 (body)

**Colours:**
- `--teal: #3dcfaa`  — measured/known data, positive
- `--coral: #e05a3a` — uncertain/exported/problematic
- `--amber: #c87f0a` — estimated/modelled/unknown
- `--bg: #050f1a`    — deep navy background
- `--surf: #071e30`  — surface
- `--sec: #6a9ab0`   — secondary text

## Pages to build

### 02 · Causality
Introduce the Halpern-Pearl actual causality framework.
Sources in project: `0312038v1.pdf`, `1903_04102v1.pdf`, `2209_15111v2.pdf`, `F95CB1AE477511EFB37FC58E403A2A1B.pdf`

Key concepts:
- Actual causality (HP model)
- Degree of responsibility (Chockler & Halpern 2004) — formula: 1/(k+1)
- Blameworthiness in multi-agent settings (Friedenberg & Halpern 2019) — Shapley decomposition
- Quantifying harm (Beckers, Chockler & Halpern 2022/2023)

### 03 · Interactive model
SCM with user-adjustable sliders. Priors from Lobelle et al. 2024 Table 2 + Navarre et al. 2022.

Inputs: plastic separation rate · packaging consumption · municipality recycling quality · DRS return rate
Outputs: grams/year to marine environment · degree of responsibility (HP scale 0–1)

### 04 · References
15 references with filter by category (Empirical / Causal theory / Data sources).
Full list documented as HTML comments in `04-references.html`.

## Data sources (page 1)
All numbers on page 1 are sourced. Key papers:
- Lobelle et al. 2024 — WM&R 42(1) — DOI 10.1177/0734242X231180863
- Navarre et al. 2022 — RCR 185 — DOI 10.1016/j.resconrec.2022.106508
- Van Emmerik et al. 2020 — ERL 15(10) — DOI 10.1088/1748-9326/abb2c6
- Van Emmerik et al. 2022 — Earth's Future 10 — DOI 10.1029/2022EF002811
- Geyer et al. 2017 — Science Advances 3(7)
- EU Single-Use Plastics Directive 2019/904
- Verpact annual report 2024
- Zwerfinator citizen-science database (zwerfinator.nl)
- Fair Resource Foundation 2025 (fairresourcefoundation.org)
