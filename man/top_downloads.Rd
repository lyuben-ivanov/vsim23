% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{top_downloads}
\alias{top_downloads}
\title{R Studio data for most downloaded packages}
\format{
\subsection{\code{top_downloads}}{

A data frame with 5 observations of 3 variables.
\describe{
\item{rank}{the ranking of the package}
\item{package}{the name of the package}
\item{maintainer}{the e-mail of the package's maintainer}
}
}
}
\source{
\url{http://cran-logs.rstudio.com}
}
\usage{
top_downloads
}
\description{
A data downloaded with the \code{cranlogs} package from R Studio's CRAN mirror.
The subset contains data about the 5 most downloaded packages for the last
month.
}
\keyword{datasets}
