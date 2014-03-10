#' @noRd
.onAttach <- function() {

	  suppressPackageStartupMessages(library(ggplot2))
    suppressPackageStartupMessages(library(reshape2))
    suppressPackageStartupMessages(library(plyr))
    suppressPackageStartupMessages(library(knitr))
    suppressPackageStartupMessages(library(devtools))

# These currently don't execute. need to move to Onload
theme_minimal_light <- function (base_size = 12, base_family = "", ...){
  modifyList (theme_minimal (base_size = base_size, base_family = base_family),
              list (axis.ticks = element_line (colour = "grey50"),
                    axis.text.x = theme_text (colour = "grey33"),
                    axis.text.y = theme_text (colour = "grey33")))
}

theme_minimal_cb_L <- function (base_size = 12, base_family = "", ...){
  modifyList (theme_minimal (base_size = base_size, base_family = base_family),
              list (axis.line = element_line (colour = "black")))
}

# I prefer that all my plots have a minimalist theme. So I keep this as default in my .profile
if (require(ggplot2, quietly = TRUE)) {
    theme_update(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(), panel.border = element_blank(),
        axis.line = element_line(colour = "black"))
  }
} 