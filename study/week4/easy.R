library(tidyverse)

employees <- data.frame(
    name = c("Ana", "Bruno", "Carlos", "Diana", "Eduardo", "Filipa"),
    department = c("IT", "Sales", "IT", "Sales", "IT", "Sales"),
    salary = c(2400, 2100, 2800, 2300, 2600, 2500),
    years = c(2, 5, 6, 3, 4, 7)
)

employees_changed <- employees |>
                    filter(salary >= 2500) |>
                    arrange(desc(salary)) |>
                    select(name, department, salary) |>
                    mutate(monthly_bonus = 0.10 * salary)


print(employees)
print("==========")
print(employees_changed)