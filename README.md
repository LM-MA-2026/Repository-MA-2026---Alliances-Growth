# Industry Distance, Alliance Governance, and Firm Growth

Analysis code for my master's thesis at the University of St. Gallen (HSG),
on how industry (SIC-code) distance between alliance partners relates to
focal-firm revenue growth, and how alliance governance form (equity-based
vs. non-equity) moderates that relationship.

## Pipeline

The files run in order, each building on the previous one's saved `.rds`
output:

| File | Produces | Thesis section |
|---|---|---|
| `01_alliance_data.qmd` | Reads and cleans the SDC Platinum alliance extract | 3.1 |
| `02_firm_data.qmd` | Builds the Compustat firm-year panel | 3.2 |
| `03_linking_and_distance.qmd` | Links alliances to firms, computes SIC-based industry-distance categories (D0-D4) | 3.2, 3.3.2 |
| `04_analysis_sample.qmd` | Builds the final analysis sample and variable set (Table 2) | 3.2, 3.3 |
| `05_descriptives.qmd` | Descriptive statistics and figures (Tables 4 and 6, Figure 5) | 3.4 |
| `06_regressions.qmd` | Main regressions for H1/H2, the benchmark analysis, and Table 5 (selection check) | 3.5, 4 |
| `07_robustness_checks.qmd` | All robustness checks (R1-R20) | 3.5.3, 4.4 |
| `08_appendix_tables.qmd` | All appendix tables and figures, and the definitive R1-R12 robustness-check numbering | Appendix |

`00_config.R` holds settings shared across all files (the data folder path,
the industry-distance category definitions, and the thesis figure theme) and
is sourced at the top of each `.qmd`.

## Data

The raw inputs (SDC Platinum alliance data, Compustat firm data, WRDS
exchange rates) are licensed data obtained through WRDS/LSEG and are **not**
included in this repository. To rerun the pipeline, obtain your own extracts
and point the `path` variable in `00_config.R` at the folder that holds them.
Intermediate `.rds` files and rendered `.html` outputs are also excluded
(see `.gitignore`) since they are large and fully reproducible from the code.

## Requirements

R with `data.table`, `ggplot2`, `fixest` (or equivalent), and Quarto to
render the `.qmd` files.
