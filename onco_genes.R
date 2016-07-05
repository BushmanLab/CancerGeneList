#    This source code file is a component of the larger INSPIIRED genomic analysis software package.
#    Copyright (C) 2016 Frederic Bushman
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#' check if gene is onco gene list(curated by Bushman's lab)
#' @return TRUE if onco-gene FALSE if not
is_onco_gene <- function(gene_symbol_sites, oncogenes) {
    toupper(gene_symbol_sites) %in% toupper(oncogenes)
}


# @return vector of gene symbols
get_oncogene_from_file <- function(filename) {
    onco <- read.csv(filename, header=FALSE, stringsAsFactors=FALSE)
    as.character(onco$V1)
}

# @return vector of gene symbols
get_adverse_event_genes <- function(filename) {
    adverse <- read.csv(filename, header=FALSE, stringsAsFactors=FALSE)
    as.character(adverse$V1)
}
