R package for calculation of hematogenous metastasis risk score from gene expression matrix
users can use both normalized microarray data and normalized bulk-level RNAseq TPM expression matrix.


# installation
devtools::install_github("oreolic/hmrisk")


# usage

#package load
library(hmrisk)

#load gene expression data
exp <- read.table("path/to/your/expression_data.txt", header = TRUE, sep = "\t", row.names = 1)

#calculate hematogenous metastasis risk score
result <- hmscore(exp)

# Example Data Format
The gene expression matrix (exp) should be in the following format:

<img width="731" alt="image" src="https://github.com/user-attachments/assets/4476fc34-399b-436b-9282-94f9cf2087f6">

