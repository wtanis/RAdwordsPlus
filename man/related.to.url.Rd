% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/related.to.url.R
\name{related.to.url}
\alias{related.to.url}
\title{Related to URL Search Parameter}
\usage{
related.to.url(..., include.sub.urls = FALSE)
}
\arguments{
\item{...}{One or more language id.}

\item{...}{One or more language id.}
}
\value{
An S3 search parameter object.
}
\description{
Related to URL search parameters for a targeting idea.
See \url{https://developers.google.com/adwords/api/docs/reference/v201710/TargetingIdeaService.RelatedToUrlSearchParameter}.
}
\examples{
# Queries for some planets
related.to.query("Mercury", "Venus", "Mars")
}
