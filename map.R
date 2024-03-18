#!usr/bin/R
#Universitat Potsdam
#Author Gaurav Sablok
#Date 2024-3-18
# an alignment to phylogeny mapper and visualization of the  genome mapping on the alignments
# it takes the output of the RAxML and the corresponding alignment and map them to the phylogeny.
library(ggtree)
library(treeio)
alignmentMap <- function(inputTreefile, inputAlignmentfile){
  stopifnot(!inputTreefile)) 
  stopifnot(!inputAlignmentfile)
  treeconversion <- read.iqtree(inputTreefile)
  readalignment <- readDNAStringset(inputAlignmentfile)
  finalalignment <- readDNAMultipleAlignment(readalignment)
  # complete this today.
  
  
  
}
