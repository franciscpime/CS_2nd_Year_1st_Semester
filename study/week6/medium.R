library(testthat)

classify_grade <- function(grade) {
    if (grade < 0 || grade > 20) {
        stop("Invalid grade")
    }

    if (grade >= 10) {
        return("Passed")
    } else {
        return("Failed")
    }
}

test_that("positive grade", {
    expect_equal(classify_grade(15), "Passed")
})

test_that("negative grade", {
    expect_equal(classify_grade(8), "Failed")
})

test_that("limit values", {
    expect_equal(classify_grade(10), "Passed")
    expect_equal(classify_grade(20), "Passed")
    expect_equal(classify_grade(0), "Failed")
})

test_that("negative values or greater then 20", {
    expect_error(classify_grade(-1), "Invalid grade")
    expect_error(classify_grade(21), "Invalid grade")
})

test_that("Non values", {
    expect_error(classify_grade(NA))
    expect_error(classify_grade("hello"))
})