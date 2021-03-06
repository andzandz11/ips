% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/unlistFirstLevel.R
\name{unlistFirstLevel}
\alias{unlistFirstLevel}
\title{Unlist To First Level Only}
\usage{
unlistFirstLevel(z, use.names = TRUE)
}
\arguments{
\item{z}{A list of lists.}

\item{use.names}{Logical, indicating if element names from the
element should be preserved.}
}
\description{
Does the same as \code{unlist}, but recurses only
one level.
}
