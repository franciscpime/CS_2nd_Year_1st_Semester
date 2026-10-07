name <- readline("Name: ")
age <- as.numeric(readline("Age: "))

year_100 <- 2026 + (100 - age)

print(paste("Hello", name, "!"))
print(paste("You will turn 100 in", year_100))