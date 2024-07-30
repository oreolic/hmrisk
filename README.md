R package for calculation of hematogenous metastasis risk score from gene expression matrix
users can use both normalized microarray data and normalized bulk-level RNAseq TPM expression matrix.


#installation
devtools::install_github("oreolic/hmrisk")


#usage

package load
library(hmrisk)

load gene expression data
exp <- read.table("path/to/your/expression_data.txt", header = TRUE, sep = "\t", row.names = 1)
calculate hematogenous metastasis risk score
result <- hmscore(exp)

#Example Data Format
The gene expression matrix (exp) should be in the following format:

Gene	Sample1	Sample2	Sample3	...
Gene1	5.1	4.3	6.2	...
Gene2	3.4	2.8	3.9	...
Gene3	7.2	6.5	8.0	...
...	...	...	...	...
