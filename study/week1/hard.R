balance <- 500

while (balance > 0) {
    withdrawal <- as.numeric(readline("Withdrawal amount: "))

    if (withdrawal <= 0) {
        print("Invalid amount.")
    } else if (withdrawal > balance) {
        print("Insufficient funds.")
    } else if (withdrawal %% 10 != 0) {
        print("Invalid value.")
    } else {
        balance <- balance - withdrawal
        print("Withdrawal successful.")
        print(paste("Remaining balance: ", balance))
    }
}
