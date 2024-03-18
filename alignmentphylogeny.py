#/usr/bin/python3
# Author Gaurav Sablok
# Universitat Potsdam
# Date 2024-3-18
# a python argparse to make the alignment and the phylogeny for the given alignment files
# given a fasta file, it will read the fasta, align the genes and will make the phylogeny
pip3 install Dendropy
import Dendropy as dendro
import pandas as pd
def fastaalignmentPhylogeny(fastafile=None):
  if fastafiles is not None:
    readingfasta = [i.strip().split() for i in open(fastafile).readlines()]
    fastadirectory = {}
    for i in range(len(readingfasta):
      if i.starts_with(">"):
        fastadirectory[readingfasta[i]] = line.strip()
    return fastadirectory
   fastanames = list(fastadirectory.keys())
   sequences = list(fastadirectory.values())
pd.DataFrame(sequences, columns=fastanames)
