library(stringr)
library(testthat)

test_that("length of the character",{
    expect_equal(str_length("F"), 1)
    expect_equal(str_length(""), 0)
    expect_equal(str_length(NA), NA_integer_)
})

test_that("length of multiple words", {
    expect_equal(str_length("Hello, World"), 12)
    expect_equal(str_length(c("heel", "goed")), c(4, 4))
    expect_equal(str_length("U 2"), 3)
})

test_that("length after string operations", {
    expect_equal(str_length(str_trim(" hello ")), 5)
    expect_equal(str_length(str_remove("hello", "h")), 4)
    expect_equal(str_length(str_match("Hello, World", "Hello")), 5)
})

test_that("length of strings with Unicode characters", {
    letter <- "\u0041"
    set_letters <- c("\u0041", "\u0021")
    expect_equal(str_length(letter), 1)
    expect_equal(str_width(letter), 1)
    expect_equal(str_length(set_letters), c(1, 1))
})