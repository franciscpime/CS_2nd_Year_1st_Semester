books <- read.csv("books.csv")
authors <- read.csv("authors.csv")

# The Writer
# Find the book written by Mia Morgan
writer <- which(books$author == "Mia Morgan")

print(writer)
print(books$title[writer])

print("===========================================")

# The Musician
# Find the book about Music published in 1613

music <- which(books$topic == "Music")
year_1613 <- which(books$year == 1613)
musician <- intersect(music, year_1613)

print(music)
print(year_1613)
print(musician)
print(books$title[musician])

print("===========================================")

# The Traveler
# Find the book published in 1775 by either Lysandra Silverleaf or Elena Petrova

year_1775 <- which(books$year == 1775)
author_lysandra <- which(books$author == "Lysandra Silverleaf")
author_elena <- which(books$author == "Elena Petrova")
traveler <- intersect(year_1775, author_lysandra)

print(year_1775)
print(author_lysandra)
print(author_elena)
print(traveler)
print(books$title[traveler])

print("===========================================")

# The Painter
# Find the book about Art with 200-300 pages published in 1990 or 1992

art <- which(books$topic == "Art")
pages_200_300 <- which(200 < books$pages & books$pages < 300)
year_1990_1992 <- which(books$year == 1990 | books$year == 1992)
painter <- Reduce(intersect, list(art, pages_200_300, year_1990_1992))

print(art)
print(pages_200_300)
print(year_1990_1992)
print(painter)
print(books$title[painter])

print("===========================================")

# The Scientist
# Find the book whose title contains "Quantum Mechanics"

quantum_mechanics <- which(grepl("Quantum Mechanics", books$title))

print(quantum_mechanics)
print(books$title[quantum_mechanics])

print("===========================================")

# The Teacher
# Find the book about Education published in the 1700s
# and written by an author from Zenthia

education <- which(books$topic == "Education")
year_1700s <- which(books$year > 1700 & books$year < 1800)

zenthia_authors <- which(authors$hometown == "Zenthia")
authors_zenthia <- authors$author[zenthia_authors]

book_zenthia <- which(books$author %in% authors_zenthia)

teacher <- Reduce(intersect, list(education, year_1700s, book_zenthia))

print(education)
print(year_1700s)
print(zenthia_authors)
print(authors_zenthia)
print(book_zenthia)
print(teacher)
print(books$title[teacher])

print("===========================================")
