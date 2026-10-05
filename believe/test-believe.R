source("believe.R")

test_that("valid password", {
    expect_equal(validate_password("Francisco7&"), "Acceptable password 🌟")
    expect_equal(validate_password("6franCisco!"), "Acceptable password 🌟")
    expect_equal(validate_password("Fr@nc1sco"), "Acceptable password 🌟")
})

test_that("one error", {
    expect_equal(validate_password("Francisco7"), "Special character missing.")
    expect_equal(validate_password("Francisco@"), "Number missing.")
    expect_equal(validate_password("francisco7!"), "Upper case character missing.")
})

test_that("some errors", {
    expect_equal(validate_password("Francisco"), c("Number missing.", "Special character missing."))
    expect_equal(validate_password("francisco"), c("Number missing.", "Special character missing.", "Upper case character missing."))
    expect_equal(validate_password("francisco&"), c("Number missing.", "Upper case character missing."))
})

test_that("edges cases", {
    expect_equal(validate_password("Franci7&"), "Acceptable password 🌟")
    expect_equal(validate_password("Francisco &7"), "Can't have spaces.")
    expect_equal(validate_password(""), "You must write a password.")
})