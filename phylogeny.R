#! usr/bin/R
# Author Gaurav Sablok
# Universitat Potsdam
# making the phylogeny and plotting the alignment on the phylogeny using the ggtree and the ggplot2
library(Biostrings)
library(ggplots2)
library(ggtree)
alignmentToPhylogeny <- function(inputalignmentfile, option){
   if (!inputfile) && (!option){
      paste0("the function needs an alignment file and the option)"
   } 
   else 
      alignmentfile <- read.FASTA(inputalignmentfile)
}
