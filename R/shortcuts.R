
#' Shortcut for head
#'
#' @param  ... Optional additional arguments
#' @export
h <- function( ...) { 
	head(...)
}

#' Shortcut for length
#'
#' @param  ... Optional additional arguments
#' @export
len <- function(...) {
length(...)
}

#' Shortcut for summary
#'
#' @param  ... Optional additional arguments
#' @importFrom base summary
#' @export
s <- function(...) { 
	summary(...)
}

#' Shortcut for names()
#'
#' @param  ... Optional additional arguments
#' @importFrom base names
#' @export
n <- function(...)  { 
	names(...)
}

#' Shortcut for unique
#'
#' @param  ... Optional additional arguments
#' @importFrom base unique
#' @export
u <-function(...)  {  
	unique(...)
}
