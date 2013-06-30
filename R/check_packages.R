#'Check and reports if any of your packages are out of date with CRAN
#'
#' @export
#' @examples \dontrun{
#' check.packages()
#'}
check.packages <- function() {
    if (!is.null(utils::old.packages())) {	
        old_packages <- utils::old.packages()
        cat("Notification:", dim(old_packages)[1], "packages are out of date \n")
        cat(unname(old_packages[, 1]), sep = ",","\n")
    }
    if (is.null(utils::old.packages())) {
        cat("All packages are current \n")
    }
}