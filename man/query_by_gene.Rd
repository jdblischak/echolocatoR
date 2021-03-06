% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/query.R
\name{query_by_gene}
\alias{query_by_gene}
\title{Use \emph{awk} to query locus subsets.}
\usage{
query_by_gene(fullSS_path, subset_path, gene, gene_col, file_sep)
}
\arguments{
\item{fullSS_path}{Path to the full summary statistics file (GWAS or QTL) that you want to fine-map.
It is usually best to provide the absolute path rather than the relative path.}

\item{subset_path}{Path of the resulting locus subset file.}

\item{gene}{Gene symbol (e.g. FOXP2) of the gene you want to query.}

\item{gene_col}{Name of the column that contains the gene name.}

\item{file_sep}{The separator in the full summary stats file.
This parameter is only necessary if \code{query_by!="tabix"}.}
}
\description{
To be used when gene name is a column in the full summary stats file.
More commonly useful for QTL full summary stats files.
}
\seealso{
Other query functions: 
\code{\link{TABIX.convert_file}()},
\code{\link{TABIX.query}()},
\code{\link{TABIX}()},
\code{\link{extract_SNP_subset}()},
\code{\link{import_topSNPs}()},
\code{\link{query_by_coordinates_merged}()},
\code{\link{query_by_coordinates}()},
\code{\link{query_by_probe}()},
\code{\link{query_fullSS}()},
\code{\link{query_handler}()}
}
\concept{query functions}
\keyword{internal}
