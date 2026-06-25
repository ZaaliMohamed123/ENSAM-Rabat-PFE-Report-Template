# LaTeX Template for PFE Report — ENSAM Rabat (INDIA)

An official LaTeX template for End-of-Studies Project reports at the National Higher School of Arts and Crafts of Rabat (ENSAM Rabat), specialising in Digital Engineering and Artificial Intelligence (INDIA).

Based on the official [Guide de Rédaction des Mémoires PFE](school_docs/Guide_Redaction_Memoires_PFE.txt).

An example completed report is included: [`example_zaali_mohamed_pfe_report.pdf`](example_zaali_mohamed_pfe_report.pdf) — a full report built with this template to serve as a reference.

## Features

- **XeLaTeX + Times New Roman** — 12pt, 1.5 line spacing as required by the school guide.
- **Polyglossia** — English, French, and Arabic support for trilingual abstracts.
- **Minted** — Syntax-highlighted code listings with chapter.number numbering.
- **Automatic cross-references** — Figures, tables, listings numbered per chapter (e.g., Figure 2.1).
- **Cover page** — ENSAM + UM5 logos, jury tabular, company integration.
- **TOC, LoF, LoT, LoL** — Automatic lists of contents, figures, tables, and listings.
- **IEEETr bibliography** — Standard citation format for engineering papers.

## Structure

```
PFE_report_template_ENSAM_Rabat/
├── main.tex                  # Master document
├── rapport.cls               # Document class (styling)
├── refs.bib                  # Bibliography entries
├── .latexmkrc                # Latexmk configuration for VS Code
├── .gitignore
├── readme.md
├── Chapters/
│   ├── front_cover.tex       # Title page (fill in your info)
│   ├── dedications.tex       # Dedications
│   ├── acknowledgments.tex   # Acknowledgments
│   ├── abstract_en.tex       # English abstract
│   ├── abstract_fr.tex       # French résumé
│   ├── abstract_ar.tex       # Arabic ملخص
│   ├── list_of_abbreviations.tex
│   ├── general_introduction.tex
│   ├── chapter1.tex          # \inputs from chapter1_sections/
│   ├── chapter1_sections/    # introduction, host_organization, existing_system_analysis, objectives_planning, conclusion
│   ├── chapter2.tex          # \inputs from chapter2_sections/
│   ├── chapter2_sections/    # introduction, literature_review, benchmark, conclusion
│   ├── chapter3.tex          # \inputs from chapter3_sections/
│   ├── chapter3_sections/    # introduction, functional_modeling, system_architecture, data_architecture, model_architecture, conclusion
│   ├── chapter4.tex          # \inputs from chapter4_sections/
│   ├── chapter4_sections/    # introduction, technical_environment, implementation, interface, evaluation, conclusion
│   ├── conclusion_perspectives.tex
│   └── annexes.tex
├── images/                   # Place your figures here
├── logos/                    # Place ENSAM, UM5, company logos here
```

## Required Structure (School Guide)

| Order | Element | Description |
|-------|---------|-------------|
| 1 | Cover Page | ENSAM logo, title, jury, company |
| 2 | Dedications & Acknowledgments | Personal and professional |
| 3 | Abstracts (AR, FR, EN) | With keywords |
| 4 | Table of Contents | Automatic |
| 5 | Lists | Acronyms, Figures, Tables |
| 6 | General Introduction | Context, problem, plan |
| 7 | Chapter 1 | Project Framework |
| 8 | Chapter 2 | State of the Art |
| 9 | Chapter 3 | Design & Architecture |
| 10 | Chapter 4 | Implementation & Results |
| 11 | Conclusion & Perspectives | Synthesis, future work |
| 12 | Bibliography | IEEE format |
| 13 | Annexes | Optional |

## Quick Start (Overleaf)
For Ptro/paid account, Click to import directly into Overleaf:

[https://www.overleaf.com/docs?snip_uri=https://github.com/ZaaliMohamed123/ENSAM-Rabat-PFE-Report-Template/archive/refs/heads/main.zip](https://www.overleaf.com/docs?snip_uri=https://github.com/ZaaliMohamed123/ENSAM-Rabat-PFE-Report-Template/archive/refs/heads/main.zip)

**Note:** This template uses XeLaTeX with `minted` (Pygments) for code listings. Compilation requires Overleaf's paid subscription (standard plan or higher) because it needs **shell-escape** and extended compile time. Free Overleaf accounts may timeout. If you are on the free plan, compile locally instead (see below).

## Prerequisites (Local Compilation)

```bash
# TeXLive (full) or MikTeX with XeLaTeX
sudo apt install texlive-full   # Linux
# Or via Homebrew on macOS:
brew install --cask mactex
```

Required packages: `minted` requires `pygments`.

```bash
pip install pygments
```

## Compilation

```bash
# With latexmk (recommended for VS Code):
latexmk -xelatex -shell-escape main.tex

# Or manually (3 passes):
xelatex -shell-escape main.tex
bibtex main
xelatex -shell-escape main.tex
xelatex -shell-escape main.tex
```

## Getting Started

1. **Replace logos:** Put your company logo in `logos/` and update `rapport.cls` line 94-96 if needed.
2. **Fill front_cover.tex:** Your name, title, supervisors, jury.
3. **Write abstracts:** One in each language.
4. **Replace placeholders:** Each chapter has `\lipsum` placeholder text and `\framebox` figure stubs. Replace with your content.
5. **Add figures:** Place PNGs in `images/` and replace the `\framebox` stubs with `\includegraphics`.
6. **Add bibliography:** Edit `refs.bib` with your sources.

## VS Code Setup

Install the **LaTeX Workshop** extension. The included `.latexmkrc` configures `latexmk` to use `xelatex` with `-shell-escape`. Open `main.tex` and press `Ctrl+Alt+B` to build.

## License

MIT — feel free to use, modify, and share.
