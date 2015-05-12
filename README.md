# CancerGeneList
maintain the list of cancer-associated genes  

# Usage

Currently list of genes of interest are stored in:

* `allonco_no_pipes.csv` gene symbols of known onco genes
* `genes_adverse_event.csv` list of genes that associated with adverse events in previous gene
therapy trials



```
source('onco_genes.R')

onco_genes <- get_oncogene_from_file('allonco_no_pipes.csv')
adverse_genes <- get_adverse_event_genes('genes_adverse_event.csv')
```
