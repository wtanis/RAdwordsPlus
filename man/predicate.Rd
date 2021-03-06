% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predicate.R
\name{predicate}
\alias{predicate}
\title{Adwords Predicate}
\usage{
predicate(field = "Name", operator = "EQUALS", values = "Google")
}
\arguments{
\item{field}{The field by which to filter the returned data.}

\item{operator}{The operator to use for filtering the data returned.}

\item{values}{The values by which to filter the field.}
}
\value{
An S3 object with the predicate data.
}
\description{
Specifies how an entity should be filtered.
Read \url{https://developers.google.com/adwords/api/docs/reference/v201705/AdGroupAdService.Predicate} for more informations.
}
\examples{
predicate(field = "CustomerId", operator = "EQUALS", values = "123-456-7890")
}
