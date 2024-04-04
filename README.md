### arabidopsis-maf-cap-accessions: brief writeup
<div align = "justify"> arabidopsis alignments for the maf and the cap gene clusters. multiple alignment and visualization of the aligned genes and clusters. The genes that are used are At5g65050-At5g65080, containing 4 genes (Maf2-5 cluster of genes) and At2g13540 CBP80 Cap-binding protein 80. The corresponding genome assemblies and the download link to the assemblies along with the code to download, align, annotate and draw the alignments. Analysis for the arabidopsis genomes and the accessions cited in the paper: https://www.nature.com/articles/s41586-023-06062-z#data-availability.
          Analysis outlay: since the genomes reported in the paper have not been annotated, I took two approaches to annotated the genome. The first approach that i took is to use the (https://github.com/sablokgaurav/Liftoff). The second approach is to use the miniprot to use the protein sequences for the corresponding genes and then align them to the genome of all these accesssion and extract those regions and then make a alignment of the same. The code along with the runs files are present within the corresponding project execution files.</div> 

### To run this, run all of these in the following order: methods and the corresponding codes and how to use them 
the accession used for the analysis are listed here: [accession](https://github.com/sablokgaurav/arabidopsis_maf_cap_accessions/blob/main/arabidopsisaccessionlinks.md) 
1. **downloadrecords.sh**: Run this to download the sequence records from the ebi or the ena. Either you can run this or you can run the code below to generate the direct apis for the download 
```
    *code for generating the direct apis for the arabidopsis ena*
for i in $(cat arabidopsisaccessionlinks.md | grep GCA | cut -f 2 -d "|");
do
         echo "curl https://www.ebi.ac.uk/ena/browser/api/fasta/$i.1\?download\=true\&gzip\=true -o $i.gz";
done
```
arabidopsis genome files have been moved to the nextcloud and the links are available in the [directapis](https://github.com/sablokgaurav/arabidopsis-maf-cap-accessions/blob/main/directapis.txt). 
```
          *Normalize your header by running this before running the analysis*
          cat fastafile | cut -f 1 -d " " | cut -f 1 -d "." > output.fasta
          # the output fasta will be used for all the analysis. 
```

2. **alignmentrecords.sh**: Run this to make the corresponding alignments, this follows the lift off approach by transferring the annotations. 
4. **phylogeny.R**: Run this to make the phylogeny. 
5. **visualfreq.R**: Run this to make the visualization plot. 
6. **map.R**: Run this to make the genome phylogeny along with the alignment placement on the phylogeny.

**How to read this github repository** 

├── allassembly.md **all accession that were studied** \
├── arabidopsisaccessionlinks.md **links to the accession and the corresponding ENA archives** \
├── arabidopsis_paper.pdf **arabidopsis paper** \
├── cap_alignments **folder containing cap alignments with a readme as how to generate them** \
├── cap_final_joined_fasta **folder containing the final joined fasta** \
├── cap_genes **folder containing the cap genes** \
├── directapis.txt **directapis for the ena** \
├── LICENSE \
├── maf_alignments **folder containing maf alignments with a readme as how to generate them** \
├── maf_final_joined_fasta **folder containing the final joined fasta** \
├── maf_genes  **folder containing the cap genes** \
├── phylogeny.jpeg \
├── python_scripts **python scripts for analysis** \
├── README.md \
├── r_scripts **r scripts for analysis** \
├── sampleplot.jpeg \
└── shell_scripts **shell scripts for analysis** 

**Uncompress the tar archive by using the** ``` tar -xJf TAIR10_GFF3_genes.tar.xz ``` for the genome annotations.
**if you have any questions i can be contacted at gaurav.sablok@uni-potsdam.de or sablokg@gmail.com**

##### Example alignment and the phylogeny visualization 
![graphical alignment](https://github.com/sablokgaurav/arabidopsis_maf_cap_acessions_alignments/blob/main/sampleplot.jpeg)
![phylogeny](https://github.com/sablokgaurav/arabidopsis_maf_cap_accessions_alignments/blob/main/phylogeny.jpeg).

- i finished coding additional python code yesterday night that will do all this with in a single file.
- adding the visualization of the genes identified by alignment so that the gene visualziation can be reconstructed even though it is not annotated.
- adding the support of the tanggle for the mapping of the alignments.

**if you have any other ideas then let me know, rest i added everything what can be done on this dataset**

Gaurav Sablok \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany 
