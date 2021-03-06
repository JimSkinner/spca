context("Crossvalidation")

test_that("crossvalidating gives sensible output", {
  cvll1 <- mean(stpcaUp$crossvalidate()$ll)
  expect_true(is.finite(cvll1))

  stpcaCpy <- stpcaUp$copy()$set_sparse(TRUE, 0.01) # sparse
  cvll2 <- mean(stpcaUp$crossvalidate()$ll)
  expect_true(is.finite(cvll2))

  expect_equal(cvll1, cvll2)
})

test_that("crossvalidating picks most likely beta", {
  stpcaCpy     <- stpcaUp$copy()$set_beta(beta0+10)
  cvllLikely   <- mean(stpcaUp$crossvalidate()$ll)
  cvllUnlikely <- mean(stpcaCpy$crossvalidate()$ll)
  expect_gt(cvllLikely, cvllUnlikely)
})

test_that("crossvalidating does not change stpca object", {
  stpcaCpy <- stpcaUp$copy()
  stpcaCpy$crossvalidate(3, 3)
  expect_equal(stpcaUp, stpcaCpy)
})
