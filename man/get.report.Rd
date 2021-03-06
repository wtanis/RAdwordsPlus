% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.report.R
\name{get.report}
\alias{get.report}
\title{Retrieve an Adwords Report}
\usage{
get.report(report, cid, auth, api.version = "201806",
  fields = c("AccountDescriptiveName", "Impressions", "Clicks", "Cost",
  "Date"), date = "LAST_14_DAYS", ...)
}
\arguments{
\item{report}{Name of the report. The list of reports can be found at \url{https://developers.google.com/adwords/api/docs/appendix/reports}.}

\item{cid}{Customer client ids (or vector of). If more than one CID is provided, the results will be concatenated.}

\item{auth}{Google AdWords authentification token.}

\item{api.version}{Version of the Adwords API to use, must be the same as in the request. Default to version 201806.}

\item{fields}{Metrics to select in the report. This can be a mix of attributes, segments and metrics. Default to "AccountDescriptiveName", "Impressions", "Clicks", "Cost", "Date".}

\item{date}{Either a date range (see \url{https://developers.google.com/adwords/api/docs/guides/reporting#date-ranges}) or a vector of length two with the date interval (start date first, end date last). Default to last fourteen days ("LAST_14_DAYS"). If NULL the during clause will be omitted, getting data for the whole time. Note that this works only if no Date or Week columns are specified (see \url{https://developers.google.com/adwords/api/docs/guides/awql}).}

\item{...}{Extra parameters for the RAdwords::statement function}
}
\value{
The report as a data.table with the selected columns.
}
\description{
Downloads an Adwords report. Wrapper function around the \link[RAdwords]{statement} and \link[RAdwords]{getData} functions.
Allows for some additional feature with the dates.
}
\examples{
# Download the search query performance report for the last 14 days.
library(RAdwords)
report <- "SEARCH_QUERY_PERFORMANCE_REPORT"
cid <- c('XXX-XXX-XXXX', 'YYY-YYY-YYYY')
auth <- doAuth()
fields <- c("AccountDescriptiveName", "AdGroupId", "AdGroupName", "AdGroupStatus", "CampaignId", "CampaignName", "CampaignStatus", "KeywordId", "KeywordTextMatchingQuery", "QueryMatchTypeWithVariant", "Impressions", "Clicks", "Conversions", "Cost", "AveragePosition")
report <- get.report(report, cid, auth, fields, date = "LAST_14_DAYS")
}
