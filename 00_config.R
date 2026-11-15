# =====================================================================
# Shared settings for all Quarto files (01 - 06)
# Keep this file in the SAME folder as the .qmd files.
# =====================================================================

library(data.table)

# Folder with the raw files and all intermediate / output files
path <- "/Users/laramazzarelli/Desktop/Masterarbeit/Final Data"

# Definition of an equity-based alliance (moderator in the thesis)
#   "jv_or_technique": SDC Joint Venture Flag = True OR Alliance Technique
#                      contains ET (Equity Transfer) or CET (Cross Equity Transfer);
#                      main definition, as recommended by LSEG support
#   "jv_only":         Joint Venture Flag only (robustness check)
# Every alliance that is not equity-based counts as non-equity.
equity_definition <- "jv_or_technique"
equity_codes      <- c("ET", "CET")

# The five SIC distance categories (D0 = closest ... D4 = most distant),
# in the order used in the thesis (Table 5, equations 3 and 5)
cats <- c("d0_same4", "d1_same3", "d2_same2", "d3_same_division", "d4_diff_division")

cat_labels <- c(d0_same4         = "D0 same 4-digit SIC",
                d1_same3         = "D1 same 3-digit SIC",
                d2_same2         = "D2 same major group",
                d3_same_division = "D3 same division",
                d4_diff_division = "D4 different division")

# Thesis style for figures: Times New Roman, black and grey only
theme_thesis <- function() {
  ggplot2::theme_classic(base_size = 11, base_family = "Times New Roman") +
    ggplot2::theme(plot.title      = ggplot2::element_text(face = "bold", hjust = 0.5),
                   legend.position = "bottom")
}

