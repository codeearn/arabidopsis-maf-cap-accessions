#! usr/bin/R
# Author Gaurav Sablok
# Universitat Potsdam
# making the phylogeny and plotting the alignment on the phylogeny using the ggtree and the ggplot2
library(Biostrings, suppressPackageStartupMessages())
library(ggplots2, suppressPackageStartupMessages())
library(ggtree, suppressPackageStartupMessages())
alignmentToPhylogeny <- function(inputalignmentfile, option){
   if (!inputfile) && (!option){
      paste0("the function needs an alignment file and the option)"
   } 
   else 
      alignmentfile <- readDNAStringset(inputfile)
      aligniningregions <- msa(alignmentfile)
      convertalignment <- msaconvert(aligningregions, format= "FASTA")
      write.fasta(convertalignment, file = "aligned.fasta")
      paste0("reading the aligned file" + "getwd()/aligned.fasta")
      readingalignment <- readDNAAlignment("aligned.fasta")
      ggmsa(readingalignment, 180, 300, colour=rgb)
      return (readingalingment)
}
###### argument parser version #######
library(argparse)
