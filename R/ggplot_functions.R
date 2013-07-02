

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