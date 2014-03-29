#' @noRd
.onAttach <- function() {
    suppressPackageStartupMessages(library(knitr))
    suppressPackageStartupMessages(library(devtools))
    suppressPackageStartupMessages(library(ggplot2))

# I prefer that all my plots have a minimalist theme. So I keep this as default in my .profile
if (require(ggplot2, quietly = TRUE)) {
    theme_update(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), panel.border = element_blank(),
        axis.line = element_line(colour = "black"))
  }
} 