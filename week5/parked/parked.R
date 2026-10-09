library(tidyverse)

lyrics <- read_file("lyrics/training_season.txt")

# Remove punctuation and convert the text to lowercase
clean <- str_remove_all(lyrics, "[[:punct:]]")
lower_case <- str_to_lower(clean)

# Split the text at whitespace, including spaces and line breaks
words <- unlist(str_split(lower_case, "\\s+"))

# Remove empty entries and count occurrences of each word
data_frame <- tibble(word = words) |>
  filter(word != "") |>
  count(word, name = "count")

# Create a bar chart showing the frequency of each word
plot <- ggplot(data_frame, aes(x = word, y = count)) +
  geom_col() +
  labs(
    x = "Word",
    y = "Count",
    title = "Word Count"
  ) +
  theme(axis.text.x = element_text(angle = 90))

ggsave(
  "lyrics.png",
  plot = plot,
  width = 6000,
  height = 1200,
  units = "px"
)

print(data_frame)