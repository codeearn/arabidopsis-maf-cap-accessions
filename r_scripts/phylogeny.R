#! usr/bin/R
# Author Gaurav Sablok
# Universitat Potsdam
# Date 2024-4-18
# plotting the phylogeny
phylogeny <- function(inputfile){
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
 alignment <- DNAMultipleAlignment(msaMuscle(readDNAStringSet(file = inputfile)))
      alignmentwrite <- msaConvert(alignment, type = "ape::DNAbin")
      write.FASTA(alignmentwrite, file = "alignment.fasta")
      fasta <- paste(getwd(),"alignment.fasta", sep = "/")
      likelihood <- TreeLine(myXStringSet = readDNAStringSet(file = fasta), 
                             showPlot = TRUE, reconstruct = TRUE)
      WriteDendrogram(likelihood, file = "maximum_likelihood.txt")
}
