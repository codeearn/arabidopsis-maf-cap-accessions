#### This directory contains the maf alignments for the arabidopsis accession. 

#### The genes for the anlysis are located in the [gene location]
                        (#https://github.com/sablokgaurav/arabidopsis-maf-cap-accessions/tree/main/maf_genes)

#### The parameters for the alignments are given below: sourcing the fasta genome files from [directapis]
                               (#https://github.com/sablokgaurav/arabidopsis-maf-cap-accessions/blob/main/directapis.txt)
                               
```
# AT5G65050.fasta
# AT5G65060.fasta
# AT5G65070.fasta
# AT5G65080.fasta
for i in *.fasta;
do
      miniprot --gff $i AT5G65050.fasta  > ${i%.*}.gff; 
done
```

#### loop this over the each gene. the correponding gene alignments for each gene \

[AT5G65050](#https://github.com/sablokgaurav/arabidopsis-maf-cap-accessions/tree/main/maf_alignments/AT5G65050) \
[AT5G65060](#https://github.com/sablokgaurav/arabidopsis-maf-cap-accessions/tree/main/maf_alignments/AT5G65060) \
[AT5G65070](#https://github.com/sablokgaurav/arabidopsis-maf-cap-accessions/tree/main/maf_alignments/AT5G65070) \
[AT5G65080](#https://github.com/sablokgaurav/arabidopsis-maf-cap-accessions/tree/main/maf_alignments/AT5G65080) \
