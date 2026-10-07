library(tidyverse)

products <- c("Laptop", "Mouse", "Keyboard", "Monitor", "Headphones")
prices <- c(900, 25, 70, 250, 80)
quantities <- c(2, 10, 5, 3, 7)

calculate_revenue <- function(price, quantity) {
    return(money <- price * quantity)
}

revenues <- calculate_revenue(prices, quantities)

table <- data.frame(
    products,
    prices,
    quantities,
    revenues
) |>
rename(
    Product = products,
    Price = prices,
    Quantity = quantities,
    Revenue = revenues
)

print(table)
print(table$Product[which.max(revenues)])
print(sum(revenues))