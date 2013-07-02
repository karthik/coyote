
# These currently don't execute. need to move ot Onload
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


#' Markdown hooks for knitr
#'
#' @param rmd_file Input RMD file
#' @param  ... Optional additional arguments
#' @export
stackify <- function(rmd_file, ...){
  require(knitr)
  opts_knit$set(upload.fun = imgur_upload)
  render_markdown(strict = TRUE)
  out <- knit(rmd_file, ...)
  return(invisible(out))
}