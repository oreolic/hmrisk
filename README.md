R package for calculation of hematogenous metastasis risk score from gene expression matrix
users can use both normalized microarray data and normalized bulk-level RNAseq TPM expression matrix.


installation
devtools::install_github("oreolic/hmrisk")


usage

# package load
library(hmrisk)

# load gene expression data
exp <- read.table("path/to/your/expression_data.txt", header = TRUE, sep = "\t", row.names = 1)
# calculate hematogenous metastasis risk score
result <- hmscore(exp)



