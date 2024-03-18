#!/usr/bin/R
# Author Gaurav Sablok
# Universitat Potsdam
# Date 2024-3-18
# a gene alignment to the visual alignment priting 
# for the creation of the alignment maps
library(ggplots2)
library(BioStrings)
library(ape)
library(msa)
visualfreq <- function(inputfile, alignmentwidth){
  if (!stopifnot(inputfile)){
    paste0("inputfile is necessary)"
  } else
  filefasta <- read.FASTA(inputfile)
  multiplealignments <- msa(filefasta)
  imagevisual <- ggmsa(multiplealignment, width = alignmentwidth)
  save.image(file = "alignmentvisual", compress = FALSE)         
}
