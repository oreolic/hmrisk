
library(testthat)
library(hmrisk)

test_that("hmscore works with HM.gmt", {
  exp <- matrix(rnorm(1000), nrow = 100, ncol = 10)
  colnames(exp) <- paste0("Sample", 1:10)
  rownames(exp) <- paste0("Gene", 1:100)
  
  result <- hmscore(exp)
  
  expect_true(is.matrix(result))
  expect_true("HM_Risk_Score" %in% rownames(result))
  expect_true(all(c("Stemness_Score", "Gastric_Score") %in% rownames(result)))
})
