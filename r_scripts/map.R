#!usr/bin/R
#Universitat Potsdam
#Author Gaurav Sablok
#Date 2024-4-2
# an alignment to phylogeny mapper and visualization of the  genome mapping on the alignments
# it takes the output of the RAxML and the corresponding alignment and map them to the phylogeny.
alignmentMap <- function(inputTreefile, inputAlignmentfile){
  suppressPackageStartupMessages(library(argparser, pos = "package:base"))
  suppressPackageStartupMessages(library(methods, pos = "package:base"))
  suppressPackageStartupMessages(library(Biostrings, pos = "package:base"))
  suppressPackageStartupMessages(library(ggmsa, pos = "package:base"))
  suppressPackageStartupMessages(library(ggplot2, pos = "package:base"))
  suppressPackageStartupMessages(library(ape, pos = "package:base"))
  suppressPackageStartupMessages(library(odseq, pos = "package:base"))
  suppressPackageStartupMessages(library(venn, pos = "package:base"))
  suppressPackageStartupMessages(library(msa, pos = "package:base"))
  suppressPackageStartupMessages(library(DECIPHER, pos = "package:base"))
  suppressPackageStartupMessages(library(ggtree, pos = "package:base"))
  suppressPackageStartupMessages(library(phytools, pos = "package:base"))
  suppressPackageStartupMessages(library(reticulate, pos = "package:base"))
  treeconversion <- read.iqtree(inputTreefile)
  alignment <- DNAMultipleAlignment(msaMuscle(readDNAStringSet(file = inputfile)))
  alignmentplot <- msaplot(treeconversion, alignment, width= 10, height = 10, bg_line=FALSE
  save.image(file="alignmentplot")
}



