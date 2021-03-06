% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{popDat_1KGphase3}
\alias{popDat_1KGphase3}
\title{Population metadata: 1KGphase3}
\format{
An object of class \code{data.table} (inherits from \code{data.frame}) with 2504 rows and 4 columns.
}
\usage{
popDat_1KGphase3
}
\description{
Population metadata: 1KGphase3
}
\examples{
\dontrun{
popDat_URL <- "ftp://ftp-trace.ncbi.nih.gov/1000genomes/ftp/release/20130502/integrated_call_samples_v3.20130502.ALL.panel"
popDat_1KGphase3 <-  data.table::fread(text=trimws(gsub(",\t",",",readLines(popDat_URL))), sep="\t",  fill=T, stringsAsFactors = F, col.names = c("sample","population","superpop","sex"), nThread = 4)
usethis::use_data(popDat_1KGphase3, overwrite = T)
}
}
\seealso{
Other LD: 
\code{\link{LD.1KG_download_vcf}()},
\code{\link{LD.1KG}()},
\code{\link{LD.LD_blocks}()},
\code{\link{LD.UKBiobank}()},
\code{\link{LD.calculate_LD}()},
\code{\link{LD.construct_subset_vcf_name}()},
\code{\link{LD.custom_panel}()},
\code{\link{LD.dprime_table}()},
\code{\link{LD.filter_LD}()},
\code{\link{LD.filter_vcf_gaston}()},
\code{\link{LD.filter_vcf}()},
\code{\link{LD.get_locus_vcf_folder}()},
\code{\link{LD.index_vcf}()},
\code{\link{LD.leadSNP_block}()},
\code{\link{LD.load_or_create}()},
\code{\link{LD.plink_LD}()},
\code{\link{LD.plink_file}()},
\code{\link{LD.plot_LD}()},
\code{\link{LD.query_vcf}()},
\code{\link{LD.rds_to_npz}()},
\code{\link{LD.read_bin}()},
\code{\link{LD.read_ld_table}()},
\code{\link{LD.run_plink_LD}()},
\code{\link{LD.save_LD_matrix}()},
\code{\link{LD.snpstats_get_LD}()},
\code{\link{LD.snpstats_get_MAF}()},
\code{\link{LD.translate_population}()},
\code{\link{LD.vcf_to_bed}()},
\code{\link{LDlinkR.LDproxy_batch}()},
\code{\link{popDat_1KGphase1}},
\code{\link{saveSparse}()}
}
\concept{LD}
\keyword{datasets}
