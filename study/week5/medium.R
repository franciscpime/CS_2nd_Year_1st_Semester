library(tidyverse)

sales <- data.frame(
    month = 1:12,
    revenue = c(1200, 1450, 1380, 1700, 1950, 2100,
                1900, 2300, 2500, 2400, 2750, 3100),
    expenses = c(800, 900, 950, 1100, 1200, 1300,
                 1250, 1450, 1500, 1600, 1750, 1900)
)

sales <- sales |>
            mutate(profit = revenue - expenses)


sales_graphic <- ggplot(
                    sales,
                    aes(x = month)
                ) +
                geom_line(aes(y = revenue, color = "Revenue")) +
                geom_line(aes(y = expenses, color = "Expenses")) +
                scale_x_continuous(breaks = seq(1, 12, by = 1)) +
                labs(
                    x = "Months",
                    y = "Rev&Exp",
                    title = "Sales"
                )


ggsave(
    "../week5/sales_graphic.png",
    sales_graphic
)

sales_graphic_2 <- ggplot(
                    sales,
                    aes(x = month, y = profit, fill = (profit == max(profit)))  
                ) + 
                geom_col() +
                scale_x_continuous(breaks = seq(1, 12, by = 1)) +
                labs(
                   x = "Months",
                   y = "Profit", 
                   title = "Sales 2"
                )

ggsave(
    "../week5/sales_graphic_2.png",
    sales_graphic_2
)

print(sales)