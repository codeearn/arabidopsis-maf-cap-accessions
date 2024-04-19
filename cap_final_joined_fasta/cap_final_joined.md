# concatenating all the cap genes predicted and aligned
- the FINAL one is the one with the predicted complete coding regions.
- the aligned one is the same aligned for all the indiviual/accessions.

## Gaps scores distribution
| Number of  Residues |  % Length    |  Cumulative NumberResid. |   % Cumulative    Length | Number of Gaps  per Column |  % Gaps  per Column | Gap Score per Column |
|---------------------|--------------|--------------------------|---------------------------|---------------------------|---------|-----------|
|  5720  |         98.99619245     |       5720     |       98.99619245   |          0       |        0            |   1         |
|  1     |       0.01730702665     |      5721      |      99.01349948    |         1        |       0.01515151515 |  0.9848484848 |
|  32    |      0.5538248529       |     5753       |    99.56732433      |       2          |     0.0303030303  |  0.9696969697 |
|  4     |     0.06922810661       |    5757        |    99.63655244      |       4          |     0.06060606061  | 0.9393939394 |
|  1     |        0.01730702665    |       5758     |       99.65385947   |          9       |        0.1363636364  |  0.8636363636 |
|  4     |        0.06922810661    |      5762      |      99.72308757    |         11       |       0.1666666667 |   0.8333333333 |
|  3     |        0.05192107996    |      5765      |      99.77500865    |         55       |       0.8333333333  |  0.1666666667 |
|  8     |        0.1384562132     |       5773     |       99.91346487   |          61      |        0.9242424242 |  0.07575757576 |
|  5     |        0.08653513326    |       5778     |       100           |          65      |        0.9848484848 |   0.01515151515 |

##### Columns Identity Descriptive Statistics
- maxColIdentity 1 
- minColIdentity 0.590909 
- avgColIdentity 0.997355 
- stdColIdentity 0.0235959

#### Description of files:
├── all.cap.gff.clipped.gff: All aligned mRNA positions. 
├── capgenes.aligned.fasta.best.anc.dnd: best phylogenetic tree
├── capgenes.aligned.fasta.best.anc.fas: best ancestral sequence
├── capgenes.aligned.fasta.best.dnd: best phylogenetic ancestral tree
├── capgenes.aligned.fasta.best.fas: alignment 
└── capview.html: visualization of alignment
