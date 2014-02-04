\name{lsa}
\alias{lsa}
\title{Functions lists all objects in current enviromemt}
\usage{
lsa(envir = .GlobalEnv)
}
\arguments{
  \item{envir}{= .GlobalEnv Default is global. Specify
  another environment if ncessary}
}
\description{
Returns nicely formatted list of objects in an environment.
Similar to \code{ls -l} from a bash prompt.
}
\examples{
\dontrun{
lsa()
}
}

