
#'<brief desc>
#'
#'<full description>
#' @param  <what param does>
#' @export
#' @examples \dontrun{
#'
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