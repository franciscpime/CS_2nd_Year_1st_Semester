
library(testthat)

bank_transaction <- function(balance, amount, type) {

    if (amount <= 0 || balance < 0) {
        stop("Invalid value")
    }

    if (type == "deposit") {
        balance <- balance + amount

    } else if (type == "withdraw") {

        if (balance < amount + 2) {
            stop("Impossible operation")
        }

        balance <- balance - amount - 2

    } else {
        stop("Invalid operation")
    }

    return(balance)
}

test_that("normal deposit & normal withdraw", {
    expect_equal(bank_transaction(100, 50, "deposit"), 150)
    expect_equal(bank_transaction(100, 50, "withdraw"), 48)
    expect_equal(bank_transaction(100, 98, "withdraw"), 0)
    expect_equal(bank_transaction(0, 50, "deposit"), 50)
})

test_that("errors", {
    expect_error(bank_transaction(100, 150, "withdraw"), "Impossible operation")
    expect_error(bank_transaction(100, 100, "withdraw"), "Impossible operation")
    expect_error(bank_transaction(100, -50, "deposit"), "Invalid value")
    expect_error(bank_transaction(100, 0, "withdraw"), "Invalid value")
    expect_error(bank_transaction(-50, 30, "withdraw"), "Invalid value")
    expect_error(bank_transaction(50, 30, "hello"), "Invalid operation")
})

test_that("sequence of transactions", {
    balance <- bank_transaction(100, 50, "deposit")
    balance <- bank_transaction(balance, 30, "withdraw")
    expect_equal(balance, 118)
})
