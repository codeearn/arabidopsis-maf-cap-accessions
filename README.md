# arabidopsis_maf_cap_cluster_gene_alignments
arabidopsis alignments for the maf and the cap gene clusters. multiple alignment and visualization of the aligned genes and clusters. The genes that are used are At5g65050-At5g65080, containing 4 genes (Maf2-5 cluster of genes) and At2g13540 CBP80 Cap-binding protein 80. The corresponding genome assemblies and the download link to the assemblies along with the code to download, align, annotate and draw the alignments. [DownloadLink](https://www.ebi.ac.uk/ena/browser/api/fasta/OX291455.1?download=true)

## To run this, run all of these in the following order: 
1. downloadrecords.sh: Run this to download the sequence records from the ebi or the ena.
2. alignmentrecords.sh: Run this to make the corresponding alignments, this follows the lift off approach by transferring the annotations.
3. alignmentrecordnon.sh: Run this to make the corresponding alignments, based on the genome alignment and the gene anchor approach.
4. phylogeny.R: Run this to make the phylogeny.
5. visualfreq.R: Run this to make the visualization plot.
6. map.R: Run this to make the genome phylogeny along with the alignment placement on the phylogeny.
7. alignmentphylogeny.py: Run this if you want to run the alignment and the phylogeny as a python version.
8. manhattanplot.R: Make the manhattan plot from the alignments.
9. Uncompress the tar archive by using the ``` tar -xJf TAIR10_GFF3_genes.tar.xz ``` for the genome annotations.

### Normalize your header by running this before running the analysis
```
cat fastafile | cut -f 1 -d " " | cut -f 1 -d "." > output.fasta
# the output fasta will be used for all the analysis. 
```

## Analysis for the arabidopsis genomes and the accessions cited in the paper: [paper link](https://www.nature.com/articles/s41586-023-06062-z#data-availability)

##### Analysis outlay: since the genomes reported in the paper have not been annotated, I took two approaches to annotated the genome. The first approach that i took is to use the [Liftoff](https://github.com/sablokgaurav/Liftoff) and the second approach is to use the [codebin](https://github.com/lastz/lastz) to use the gene sequences for the corresponding genes and then align them to the genome of all these accesssion and extract those regions and then make a alignment of the same. The code along with the runs files are present within the project execution files. 

##### This is how the alignment plot will look. There will be more sequences but this is an example to show how it will look. I can also add the probabilistic frequencies. Let me know, if this is passed then will generate the complete analysis by Monday. 
![graphical alignment](https://github.com/sablokgaurav/arabidopsis_maf_cap_acessions_alignments/blob/main/Rplot.jpeg)
![phylogeny](https://github.com/sablokgaurav/arabidopsis_maf_cap_accessions_alignments/blob/main/phylogeny.jpeg)

Gaurav Sablok \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany 
