#' Functions lists all objects in current enviromemt
#'
#' Returns nicely formatted list of objects in an environment. Similar to \code{ls -l} from a bash prompt.
#' @param envir = .GlobalEnv Default is global. Specify another environment if ncessary
#' @export
#' @examples \dontrun{
#' lsa()
#'}
lsa <- function(envir = .GlobalEnv) {
    obj_type <- function(x) {
        class(get(x))
    }
    lis <- data.frame(sapply(ls(envir = envir), obj_type))
    lis$object_name <- rownames(lis)
    names(lis)[1] <- "class"
    names(lis)[2] <- "object"
    return(unrowname(lis))
}
