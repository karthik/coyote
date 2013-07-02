#'Check and reports if any of your packages are out of date with CRAN
#'
#' @export
#' @importFrom utils old.packages
check.packages <- function() {
    if (!is.null(old.packages())) {	
        old_packages <- old.packages()
        cat('Notification:', dim(old_packages)[1], 'packages are out of date \n')
        cat(unname(old_packages[, 1]), sep = ',', '\n')
    }
    if (is.null(old.packages())) {
        cat('All packages are current \n')
    }
}