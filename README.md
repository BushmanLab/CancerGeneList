# CancerGeneList
maintain the list of cancer-associated genes  

# Usage

Currently list of genes of interest are stored in:

* `allonco_no_pipes.csv` gene symbols of known onco genes,
* `genes_adverse_event.csv` list of genes that associated with adverse events in previous gene therapy trials,
* `mouseonco_gene_no_pipes.csv` list of mouse onco genes.

# Note

`mouseonco_gene_no_pipes.csv` was obtained by first downloading gene list from http://variation.osu.edu/rtcgd/, and then process the file with the following command to get rid of special characters.
```
cut -d, -f2 mouse_onco_gene.csv | awk -F'|' '{print $1}' | perl -lne '~/([a-zA-Z0-9-_\.]*)/; print $1' > mouse_onco_gene_nopipe.csv
```

```
source('onco_genes.R')

onco_genes <- get_oncogene_from_file('allonco_no_pipes.csv')
adverse_genes <- get_adverse_event_genes('genes_adverse_event.csv')
```
