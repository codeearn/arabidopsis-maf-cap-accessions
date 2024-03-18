# arabidopsis_maf_cap_cluster_gene_alignments
arabidopsis alignments for the maf and the cap gene clusters. multiple alignment and visualization of the aligned genes and clusters. The genes that are used are At5g65050-At5g65080, containing 4 genes (Maf2-5 cluster of genes) and At2g13540 CBP80 Cap-binding protein 80. The corresponding genome assemblies and the download link to the assemblies along with the code to download, align, annotate and draw the alignments. [DownloadLink](https://www.ebi.ac.uk/ena/browser/api/fasta/OX291455.1?download=true)

To run this, run all of these in the following order: 
1. downloadrecords.sh: Run this to download the sequence records from the ebi or the ena.
2. alignmentrecords.sh: Run this to make the corresponding alignments, this follows the lift off approach by transferring the annotations.
3. alignmentrecordnon.sh: Run this to make the corresponding alignments, based on the genome alignment and the gene anchor approach.
4. phylogeny.R: Run this to make the phylogeny.
5. visualfreq.R: Run this to make the visualization plot.
6. map.R: Run this to make the genome phylogeny along with the alignment placement on the phylogeny.
7. alignmentphylogeny.py: Run this if you want to run the alignment and the phylogeny as a python version.

Normalize your header by running this before running the analysis
```
cat fastafile | cut -f 1 -d " " | cut -f 1 -d "."
```

Gaurav Sablok \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany 
