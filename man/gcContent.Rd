% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sequence_features.R
\name{gcContent}
\alias{gcContent}
\title{Get GC content}
\usage{
gcContent(seqs, fa = NULL)
}
\arguments{
\item{seqs}{a character vector of sequences, or ranges as GRangesList}

\item{fa}{fasta index file  .fai file, either path to it, or the loaded
FaFile, default (NULL), only set if you give ranges as GRangesList}
}
\value{
a numeric vector of gc content scores
}
\description{
0.5 means 50% of bases are G or C.
}
\examples{
# Here we make an example from scratch
seqName <- "Chromosome"
ORF1 <- GRanges(seqnames = seqName,
                   ranges = IRanges(c(1007, 1096), width = 60),
                   strand = c("+", "+"))
ORF2 <- GRanges(seqnames = seqName,
                    ranges = IRanges(c(400, 100), width = 30),
                    strand = c("-", "-"))
ORFs <- GRangesList(tx1 = ORF1, tx2 = ORF2)
# get path to FaFile for sequences
faFile <- system.file("extdata/references/danio_rerio", "genome_dummy.fasta",
 package = "ORFik")
gcContent(ORFs, faFile)
}
