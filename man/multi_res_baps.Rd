% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multi_res_baps.R
\name{multi_res_baps}
\alias{multi_res_baps}
\title{multi_res_baps}
\usage{
multi_res_baps(sparse.data, levels = 2, k.init = NULL,
  hc.method = "ward", n.cores = 1, quiet = TRUE)
}
\arguments{
\item{sparse.data}{a sparse SNP data object returned from import_fasta_sparse_nt}

\item{levels}{the number of levels to investigate (default=2)}

\item{k.init}{the initial number of clusters for the top level (default=n.isolates/4)}

\item{hc.method}{the type of initial hierarchical clustering to use. Can be with 'ward' or 'genie' (default='ward')}

\item{n.cores}{the number of cores to use in clustering}

\item{quiet}{whether to print additional information or not (default=TRUE)}
}
\value{
a data.frame representing the final clustering at multiple resolutions
}
\description{
Function to perform Bayesian hierarchical clustering of population structure successively at multiple resolutions, choosing the best partition at each level.
}
\examples{

fasta.file.name <- system.file("extdata", "seqs.fa", package = "fastbaps")
sparse.data <- import_fasta_sparse_nt(fasta.file.name)
multi.res.df <- multi_res_baps(sparse.data, levels=2)

}
