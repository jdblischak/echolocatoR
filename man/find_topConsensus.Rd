% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{find_topConsensus}
\alias{find_topConsensus}
\title{Find the top Consensus SNP}
\usage{
find_topConsensus(dat, top_N = 1, grouping_vars = c("Locus"))
}
\description{
Identify the \code{top_N} Consensus SNP(s) per Locus,
defined as the Consensus SNPs with the highest mean PP across all fine-mapping tools used.
}
\keyword{internal}
