# Introduction

R package for calculation of hematogenous metastasis risk score and classify risk group from gene expression matrix users can use both normalized microarray data and normalized bulk-level RNAseq TPM expression matrix.


# Installation
devtools::install_github("oreolic/hmrisk")


# Usage

#package load
library(hmrisk)

#load gene expression data
exp <- read.table("path/to/your/expression_data.txt", header = TRUE, sep = "\t", row.names = 1)

#calculate hematogenous metastasis risk score
result <- hmscore(exp)

#View the ssGSEA scores
print(result$scores)

#View the risk categories
print(result$risk_categories)


# Example Data Format
The gene expression matrix (exp) should be in the following format:

<img width="731" alt="image" src="https://github.com/user-attachments/assets/4476fc34-399b-436b-9282-94f9cf2087f6">

