flavor <- readline("Flavor: ")
caffeine <- readline("Caffeine: ")

if (flavor == "Light" && caffeine == "Yes") {
    print("You might like green tea 🫖")
} else if (flavor == "Light" && caffeine == "No") {
    print("You might like chamomile tea 🫖")
} else if (flavor == "Bold" && caffeine == "Yes") {
    print("You might like black tea 🫖")
} else if (flavor == "Bold" && caffeine == "No") {
    print("You might like rooibos tea 🫖")
}

if (flavor != "Light" && flavor != "Bold") {
    print("Please right Light or Bold")
} 

if (caffeine != "Yes" && caffeine != "No") {
    print("Please right Yes or No")
} 