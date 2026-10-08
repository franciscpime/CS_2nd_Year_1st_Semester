library(testthat)

calculate <- function(a, b, operation) {
    if (operation == "add") {
        return(a + b)
    } else if (operation == "subtract") {
        return(a - b)
    } else if (operation == "multiply") {
        return(a * b)
    } else if (operation == "divide") {
        return(a / b)
    } else {
        stop("Invalid operation")
    }
}

test_that("test addition", {
    expect_equal(calculate(2,3,"add"), 5)
})

test_that("test subtraction", {
    expect_equal(calculate(2,3,"subtract"), -1)
})

test_that("test multiplication", {
    expect_equal(calculate(2,3,"multiply"), 6)
})

test_that("test division", {
    expect_equal(calculate(6,3,"divide"), 2)
})

test_that("invalid operation", {
    expect_error(calculate(2,3,"factorize"), "Invalid operation")
})

test_that("test operation with negative numbers", {
    expect_equal(calculate(-6,-3,"multiply"), 18)
})