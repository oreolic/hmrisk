# path/to/hmrisk/R/hmscore.R

#' Compute HM Risk Score
#'
#' This function computes the HM risk score using the GSVA package.
#' It loads gene sets from the HM.gmt file and calculates ssGSEA scores.
#' The HM risk score is computed as the difference between stemness_score and gastric_score.
#' @param exp Expression matrix (genes x samples).
#' @return A matrix with ssGSEA scores and HM risk score.
#' @import GSEABase
#' @import GSVA
#' @export


hmscore <- function(exp) {
  # Load the gene sets from HM.gmt
  gmt_path <- system.file("extdata", "HM.gmt", package = "hmrisk")
  geneset <- GSEABase::getGmt(gmt_path)
  
  # Perform ssGSEA
  result <- GSVA::gsva(as.matrix(exp), geneset,
                   method = "ssgsea",
                   kcdf = "Gaussian",
                   abs.ranking = FALSE,
                   min.sz = 1,
                   max.sz = Inf,
                   parallel.sz = 0,
                   mx.diff = TRUE,
                   tau = 0.25,
                   ssgsea.norm = TRUE,
                   verbose = TRUE)
  
  # Calculate HM risk score
  result["HM_Risk_Score", ] <- result["Stemness_Score", ] - result["Gastric_Score", ]
  
    # Categorize risk
  risk_categories <- ifelse(res.gsva["HM_Risk_Score", ] > 0.15, "high risk", "low risk")
  
  return(list(
    scores = res.gsva,
    risk_categories = risk_categories
  ))
}
