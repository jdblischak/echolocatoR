% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LD.R
\name{LD.1KG}
\alias{LD.1KG}
\title{Compute LD from 1000 Genomes}
\usage{
LD.1KG(
  locus_dir,
  subset_DT,
  LD_reference = "1KGphase1",
  superpopulation = "EUR",
  vcf_folder = NULL,
  remote_LD = T,
  LD_block = F,
  LD_block_size = 0.7,
  remove_correlates = F,
  remove_tmps = T,
  fillNA = 0,
  download_method = "wget",
  nThread = 4,
  conda_env = "echoR",
  verbose = T
)
}
\arguments{
\item{LD_reference}{Which linkage disequilibrium reference panel do you want to use.
Options include:
\describe{
\item{"UKB"}{A pre-caclulated LD reference matrix from a subset of caucasian British individuals from the UK Biobank. See \href{https://www.biorxiv.org/content/10.1101/807792v2}{Wiessbrod et al. (2019)} for more details.}
\item{"1KGphase1"}{Download a subset of the 1000 Genomes Project Phase 1 vcf and calculate LD on the fly with plink.}
\item{"1KGphase3"}{Download a subset of the 1000 Genomes Project Phase 3 vcf and calculate LD on the fly with plink.}
\item{"<path>/*.vcf" or "<path>/*.vcf.gz"}{Alternatively, users can provide their own custom panel by supplying a list of \emph{.vcf} file path (one per locus) which \pkg{echolocatoR} will use to compute LD (using \emph{plink}).}
}}

\item{superpopulation}{Subset your LD reference panel by superopulation.
Setting the superpopulation is not currently possible when \code{LD_reference="UKB"}.
\href{https://www.internationalgenome.org/faq/which-populations-are-part-your-study/}{1KGphase1 options} include:
\describe{
\item{"AFR"}{African [descent]}
\item{"AMR"}{Ad-mixed American}
\item{"EAS"}{East Asian}
\item{"EUR"}{European}
\item{"SAS"}{South Asian}
}}

\item{remote_LD}{When acquiring LD matrixes,
the default is to delete the full vcf or npz files after \pkg{echolocatoR} has extracted the necssary subset.
However, if you wish to keep these full files (which can be quite large) set \code{remote_LD=T}.}

\item{LD_block}{Calculate LD blocks with \emph{plink} and only include the block to which the lead SNP belongs.}

\item{LD_block_size}{Adjust the granularity of block sizes when \code{LD_block=T}.}

\item{remove_correlates}{A named list, where the names are the RSIDs of SNPs
whose LD correlates you wish to remove,
and the value is the absolute r2 threshold you wish to filter at for each RSID respectively
(e.g. \code{ remove_correlates = c("rs76904798"=.2, "rs10000737"=.8)}).
This will also remove the SNPs in \code{remove_correlates} themselves.}

\item{remove_tmps}{Whether to remove any temporary files (e.g. FINEMAP output files) after the pipeline is done running.}

\item{fillNA}{When pairwise LD (r) between two SNPs is \code{NA}, replace with 0.}

\item{conda_env}{The name of a conda environment to use.}

\item{verbose}{Whether \pkg{echolocatoR} should be verbose or silent.}
}
\description{
Downloads a subset vcf of the 1KG database that matches your locus coordinates.
Then uses \emph{plink} to calculate LD on the fly.
}
\details{
This approach is taken, because other API query tools have limitations with the window size being queried.
This approach does not have this limitations, allowing you to fine-map loci more completely.
}
\examples{
\dontrun{
data("BST1"); data("locus_dir");
BST1 <- limit_SNPs(max_snps = 500, subset_DT = BST1)
LD_matrix <- LD.1KG(locus_dir=file.path("~/Desktop",locus_dir), subset_DT=BST1, LD_reference="1KGphase1")

## Kunkle et al 2019
locus_dir <- "/sc/arion/projects/pd-omics/brian/Fine_Mapping/Data/GWAS/Kunkle_2019/ACE"

}
}
\seealso{
Other LD: 
\code{\link{LD.1KG_download_vcf}()},
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
\code{\link{popDat_1KGphase3}},
\code{\link{saveSparse}()}
}
\concept{LD}
\keyword{internal}
