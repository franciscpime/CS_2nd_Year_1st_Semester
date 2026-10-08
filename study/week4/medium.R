library(tidyverse)

sales <- data.frame(
    product = c("Laptop", "Mouse", "Laptop", "Keyboard",
                "Mouse", "Keyboard", "Laptop", "Mouse"),
    region = c("North", "North", "South", "North",
               "South", "South", "North", "South"),
    units = c(3, 10, 2, 5, 8, 7, 4, 12),
    price = c(900, 25, 900, 70, 25, 70, 900, 25)
)

sales <- sales |>
            mutate(revenue = sales$units * sales$price)

sales_by_product <- sales |>
                    group_by(product) |>
                    summarize(
                        total_units = sum(units), 
                        total_revenue = sum(revenue),
                        number_sales = n()
                    ) |>
                    arrange(desc(total_revenue))
                    

print(sales)
print("=======")
print(sales_by_product)
print(sales_by_product$product[which.max(sales_by_product$total_revenue)])