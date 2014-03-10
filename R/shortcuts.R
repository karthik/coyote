
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
#' @export
s <- function(...) { 
	summary(...)
}

#' Shortcut for names()
#'
#' @param  ... Optional additional arguments
#' @export
n <- function(...)  { 
	names(...)
}

#' Shortcut for unique
#'
#' @param  ... Optional additional arguments
#' @export
u <-function(...)  {  
	unique(...)
}


#'Clears the screeen
#'
#' @param ... other arguments
#' @export
clear <- function(...) {
	system("clear")
	invisible()
}

#'Clears the screeen
#'
#' @param ... other arguments
#' @export
cl <- function(...) {
	system("clear")
	invisible()
}

