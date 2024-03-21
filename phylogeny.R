#! usr/bin/R
# Author Gaurav Sablok
# Universitat Potsdam
# making the phylogeny and plotting the alignment on the phylogeny using the ggtree and the ggplot2
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
  fasta <- "/home/gaurav/Desktop/arabidopsis/alignment.fasta"
  ggmsa(fasta, 164, 213, color="Chemistry_AA")
  complete_likelihood <- TreeLine(myXStringSet = 
          readDNAStringSet(file = "alignment.fasta"),myDistMatrix = 
         DistanceMatrix(RemoveGaps(StaggerAlignment(AlignSeqs(readDNAStringSet(
                     file = "alignment.fasta"))), 
                           removeGaps = "all", processors = 3), type = "dist"), 
       method = "complete", cutoff = 0.05, showPlot = TRUE, reconstruct = TRUE)
  WriteDendrogram(complete_likelihood, file = "maximum_likelihood.txt")
}
