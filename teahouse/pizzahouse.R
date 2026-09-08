size <- readline("Size (Small, Medium or Large): ")
meat <- readline("Meat (Yes or No): ")
spicy <- readline("Spicy (Yes or No): ")

if (size == "Small" && meat == "Yes" && spicy == "Yes") {
    print("You might like a spicy pepperoni pizza!")
} else if (size == "Small" && meat == "Yes" && spicy == "No") {
    print("You might like a classic pepperoni pizza!")
} else if (size == "Small" && meat == "No" && spicy == "Yes") {
    print("You might like a spicy veggie pizza!")
} else if (size == "Small" && meat == "No" && spicy == "No") {
    print("You might like a margherita pizza!")
} else if (size == "Medium" && meat == "Yes" && spicy == "Yes") {
    print("You might like a spicy BBQ chicken pizza!")
} else if (size == "Medium" && meat == "Yes" && spicy == "No") {
    print("You might like a four-cheese and ham pizza!")
} else if (size == "Medium" && meat == "No" && spicy == "Yes") {
    print("You might like a spicy veggie supreme!")
} else if (size == "Medium" && meat == "No" && spicy == "No") {
    print("You might like a classic margherita!")
} else if (size == "Large" && meat == "Yes" && spicy == "Yes") {
    print("You might like a meat lovers pizza with jalapeños!")
} else if (size == "Large" && meat == "Yes" && spicy == "No") {
    print("You might like a meat lovers pizza!")
} else if (size == "Large" && meat == "No" && spicy == "Yes") {
    print("You might like a large spicy veggie pizza!")
} else {
    print("You might like a large margherita pizza!")
}

if (size != "Small" && size != "Medium" && size != "Large") {
print("Please write Small, Medium or Large")
}

if (meat != "Yes" && meat != "No") {
print("Please write Yes or No")
}

if (spicy != "Yes" && spicy != "No") {
print("Please write Yes or No")
}

