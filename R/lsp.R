#' List functions inside any package
#'
#' @param package  Name of a loaded package
#' @param  all.names Default is \code{FALSE}
#' @param  pattern Filter function search by package
#' @export
#' @examples \dontrun{
#' library(ggplot2)
#' lsp(ggplot2)
#' # Search only for scale functions
#' lsp(ggplot2, pattern="scales")
#'}
lsp <- function(package, pattern, all.names = FALSE) {
    package <- deparse(substitute(package))
    ls(pos = paste("package", package, sep = ":"), all.names = all.names,
        pattern = pattern)
}