
#' check if gene is onco gene list(curated by Bushman's lab)
#' @return TRUE if onco-gene FALSE if not
is_onco_gene <- function(gene_symbol_sites, oncogenes) {
    toupper(gene_symbol_sites) %in% toupper(oncogenes)
}

get_oncogene_from_file <- function(filename) {
    onco <- read.csv(filename, header=FALSE, stringsAsFactors=FALSE)
    as.character(onco$V1)
}
