library(testthat)
library(studenttools)

test_that("passed", {
    expect_equal(check_pass("A"), "Congrats, you passed!!")
})

test_that("failed", {
    expect_equal(check_pass("F"), "Unfortunately, you failed :(")
})