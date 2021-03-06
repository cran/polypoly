% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/polypoly-package.R
\name{poly_add_columns}
\alias{poly_add_columns}
\title{Add orthogonal polynomial columns to a dataframe}
\usage{
poly_add_columns(.data, .col, degree = 1, prefix = NULL,
  scale_width = NULL)
}
\arguments{
\item{.data}{a dataframe}

\item{.col}{a bare column name}

\item{degree}{number of polynomial terms to add to the dataframe}

\item{prefix}{prefix for the names to add to the dataframe. default is the
name of \code{.col}.}

\item{scale_width}{optionally rescale the dataframe using \code{\link[=poly_rescale]{poly_rescale()}}.
Default behavior is not to perform any rescaling.}
}
\value{
the dataframe with additional columns of orthogonal polynomial terms
of \code{.col}
}
\description{
Add orthogonal polynomial columns to a dataframe
}
\examples{
df <- data.frame(time = rep(1:5, 3), y = rnorm(15))

# adds columns "time1", "time2", "time3"
poly_add_columns(df, time, degree = 3)

# adds columns "t1", "t2", "t3 and rescale
poly_add_columns(df, time, degree = 3, prefix = "t", scale_width = 1)
}
