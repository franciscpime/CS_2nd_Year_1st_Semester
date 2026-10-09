flavor <- readline("Flavor: ")
caffeine <- readline("Caffeine: ")

# Recommend a tea based on both preferences
if (flavor == "Light" && caffeine == "Yes") {
  print("You might like green tea 🫖")
} else if (flavor == "Light" && caffeine == "No") {
  print("You might like chamomile tea 🫖")
} else if (flavor == "Bold" && caffeine == "Yes") {
  print("You might like black tea 🫖")
} else if (flavor == "Bold" && caffeine == "No") {
  print("You might like rooibos tea 🫖")
}

# Display an error message if the flavor is invalid
if (flavor != "Light" && flavor != "Bold") {
  print("Please enter Light or Bold")
}

# Display an error message if the caffeine preference is invalid
if (caffeine != "Yes" && caffeine != "No") {
  print("Please enter Yes or No")
}