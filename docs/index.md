<h3>arabidopsis-maf-cap-accessions: </h3>

<h4><b>brief writeup</b></h4>

<div align = "justify"> arabidopsis alignments for the maf and the cap gene clusters.
       multiple alignment and visualization of the aligned genes and clusters. The genes that are used are
           At5g65050-At5g65080, containing 4 genes (Maf2-5 cluster of genes) and At2g13540
                           CBP80 Cap-binding protein 80. The corresponding genome assemblies and the download 
                      link to the assemblies along with the code to download, align, annotate and draw the alignments.
    Analysis for the arabidopsis genomes and the accessions cited in the paper: https://www.nature.com/articles/s41586-023-06062-z#data-availability. </div></br>

<div align = "justify"> <b>Analysis outlay</b>: since the genomes reported in the paper have not been annotated,
                          miniprot was used to align the protein sequences for the corresponding genes and 
                            then align them to the genome of all these accesssion and extract those regions and
                     then make a alignment of the same. The code along with the runs files are present
                                              within the corresponding project execution files.</div> </br>

<div align = "justify"><b>Methods</b></div></br>
   
the accession used for the analysis are listed here:

<a href="https://github.com/gauravearn/arabidopsis_maf_cap_accessions/blob/main/arabidopsisaccessionlinks.md">accessions</a>

- **downloadrecords.sh**: Run this to download the sequence records from the ebi or the ena. Either you can run this or you can run the code below to generate the direct apis for the download 
```
    *code for generating the direct apis for the arabidopsis ena*
for i in $(cat arabidopsisaccessionlinks.md | grep GCA | cut -f 2 -d "|");
do
         echo "curl https://www.ebi.ac.uk/ena/browser/api/fasta/$i.1\?download\=true\&gzip\=true -o $i.gz";
done
```

<h4>arabidopsis genome apis</h4> 

<a href="https://github.com/gauravearn/arabidopsis-maf-cap-accessions/blob/main/directapis.txt">arabidopsis apis</a>. 
```
          *Normalize your header by running this before running the analysis*
          cat fastafile | cut -f 1 -d " " | cut -f 1 -d "." > output.fasta
          # the output fasta will be used for all the analysis. 
```

<table class = table table-stripped>
    <caption> layout of the analysis scripts</caption>
        <thead>
            <tr>
                <th scope = "col">alignmentrecords.sh</th>
                <th scope = "col">phylogeny.R</th>
                <th scope = "col">visualfreq.R</th>
                <th scope = "col">mapalignment-phylogeny.R</th>
                <th scope = "col">generatemRNAs.py</th>
                <th scope = "col">genome-annotation-visualizer.R</th>
            </tr>
       </thead>
    <tbody>
           <tr>
               <th scope = "row"> corresponding alignments</th>
                <th scope = "row">phylogeny</th>
                <th scope = "row">alignment visualization</th>
                <th scope = "row"> alignment visualization plus phylogeny</th>
                <th scope = "row">extract mRNAs</th>
                <th scope = "row"> visualization of genomic features</th>
           </tr>
    </tbody>
</table>

<ul><li>alignmentrecords.sh</li>Run this to make the corresponding alignments, 
                                        this follows the lift off approach by transferring the annotations.</ul>
 <ul><li>phylogeny.R</li>Run this to make the phylogeny</ul>
<ul><li>visualfreq.R</li>Run this to make the alignment visualization</ul>
<ul><li>mapalignment-phylogeny.R</li>Run this to make the alignment, visualization.</ul>
<ul><li>generatemRNAs.py</li>Run this to extract the corresponding mRNAs.</ul>
<ul><li>genome-annotation-visualizer.R</li>Run this to make the visualization of the genomic features.</ul> 
<ul><li><a href= "https://github.com/gauravearn/genome-annotation-visualizer">genome-annotation</a></li></ul>

<h4>How to read this github repository</h4>

- allassembly.md **all accession that were studied** 
- arabidopsisaccessionlinks.md **links to the accession and the corresponding ENA archives** 
- arabidopsis_paper.pdf **arabidopsis paper**
- directapis.txt **directapis for the ena**
  
- cap_alignments **folder containing cap alignments with a readme as how to generate them** 
- cap_final_joined_fasta **folder containing the final fasta, alignments, ancestral tree, phylogenetic tree, acestral sequence, alignment visualization** 
- cap_genes **folder containing the cap genes** 

- maf_alignments **folder containing maf alignments with a readme as how to generate them** 
- maf_final_joined_fasta **folder containing the final fasta alignments, ancestral tree, phylogenetic tree, acestral sequence, alignment visualization** 
- maf_genes  **folder containing the cap genes**
  
- python_scripts **python scripts for analysis** 
- r_scripts **r scripts for analysis** 
- shell_scripts **shell scripts for analysis**
- README.md  **README for the complete analysis**

<p2><b>Folder read for the analysis</b></p2></br>

**cap_final_joined_fasta: File listing** [cap_final_joined_fasta](https://github.com/gauravearn/arabidopsis-maf-cap-accessions/tree/main/cap_final_joined_fasta)
```
    alignments can be run with the following: 
       for i in *.fasta; do echo prank -d=${i} -o= \
                              ${i%.*}.aligned.fasta -showanc -showtree; done
```
```
├── all.cap.gff.clipped.gff: All aligned mRNA positions. 
├── capgenes.aligned.fasta.best.anc.dnd: best phylogenetic tree 
├── capgenes.aligned.fasta.best.anc.fas: best ancestral sequence 
├── capgenes.aligned.fasta.best.dnd: best phylogenetic ancestral tree 
├── capgenes.aligned.fasta.best.fas: alignment 
└── capview.html: visualization of alignment
```


<a href = "https://github.com/gauravearn/arabidopsis-maf-cap-accessions/tree/main/maf_final_joined_fasta">maf_final_joined_fasta</a>
```
├── AT5G65050.all.out.fasta : 
                             mRNA regions for the AT5G65050
├── AT5G65050.gff.clipped.gff :
                             aligned position information for the AT5G65050
├── AT5G65060.all.out.fasta :
                            mRNA regions for the AT5G65060
├── AT5G65060.gff.clipped.gff :
                            aligned position information for the AT5G65060
├── AT5G65070.all.out.fasta : 
                            mRNA regions for the AT5G65070
├── AT5G65070.gff.clipped.gff :  
                           aligned position information for the AT5G65070
├── AT5G65080.all.out.fasta : 
                          mRNA regions for the AT5G65080
├── AT5G65080.gff.clipped.gff : 
                          aligned position information for the AT5G65070
├── final.all.linear.tar.bz : 
                         all arabidopsis accessions
├── maf_aligned_ancestral_tree :
                        ancestral tree for each of the indiviual.
├── maf_aligned_best : 
                       aligned regions for each of the indiviuals
                                                   along with the visualization
├── maf_ancestral_sequence :
                       ancestral sequences for each of them.
```

<ul><li>Uncompress the tar archive by using the for genome annotations.</ul><li> 

```
         tar -xJf TAIR10_GFF3_genes.tar.xz
``` 
    
<p>if you have any questions i can be contacted at gaurav.sablok@uni-potsdam.de or gauravcodepro@gmail.com</p>

Gaurav <br>
Academic Staff Member <br>
Bioinformatics <br>
Institute for Biochemistry and Biology <br>
University of Potsdam <br>
Potsdam,Germany 
