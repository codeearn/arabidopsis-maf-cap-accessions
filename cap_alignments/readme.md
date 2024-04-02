#### This directory contains the cap alignments for the arabidopsis accession. 
#### The genes for the anlysis are located in the [gene location]
                        (#https://github.com/sablokgaurav/arabidopsis-maf-cap-accessions/tree/main/cap_genes)

#### The parameters for the alignments are given below:
```
# sourcing the fasta genome files from [directapis]
                  (#https://github.com/sablokgaurav/arabidopsis-maf-cap-accessions/blob/main/directapis.txt)
for i in *.fasta;
do
      miniprot --gff caprpotein.fasta $i > ${i%.*}.gff;
done
```

