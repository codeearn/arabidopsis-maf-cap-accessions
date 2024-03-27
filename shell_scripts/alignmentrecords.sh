 alignment () {
   # a streamline function for accessing the ENA archives using the API access.
   #!/usr/bin/env bash
   # -*- coding:  utf-8 -*-
   # Author: Gaurav Sablok
   # date: 2024-3-18
   echo "process the alignment"
   echo "checking the alignment tags"
   echo "making the environment"
   sudo apt-get install lastz
   sudo apt-get install muscle
   sudo apt-get install iqtree
   sudo apt-get install raxml-ng
   sudo apt-get install model-ng
   mkdir $1 
   cd $1 
   for i in *.fasta; do muscle -in $i -out ${i%.}.aligned.fasta 
   for i in ${i%.*}.aligned.fasta; do trimal -in $i -out ${i%.**}.trim.fasta --nogaps
   for i in ${i%.**}.trim.fasta; do  readal -in $i -out ${i%.**}.stats 
   echo "thank you for using the alignments"
   echo "muscle alignments have been done" 
   echo "alignments have been trimmed using the trimal" 
   echo "alignment visualization have been generated using the readal" 
} << $1 







