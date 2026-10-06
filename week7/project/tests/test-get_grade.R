library(testthat)
library(studenttools)

test_that("returns A grade", {
    expect_equal(get_grade(95), "A")
})

test_that("returns B grade", {
    expect_equal(get_grade(82.5), "B")
})

test_that("returns C grade", {
    expect_equal(get_grade(73), "C")
})

test_that("returns D grade", {
    expect_equal(get_grade(66), "D")
})

test_that("returns F grade", {
    expect_equal(get_grade(42), "F")
})