library(testthat)
library(studenttools)

test_that("normal case", {
    expect_equal(calculate_average(c(95, 70, 84, 100, 73, 89, 79, 70)), 82.5)
})

test_that("missing value", {
    expect_error(calculate_average(c(95, 70, 84, 100, 73, 89, 79)))
})

test_that("NA values", {
    expect_true(is.na(calculate_average(c(95, 70, 84, 100, NA, 89, 79, 70))))
})