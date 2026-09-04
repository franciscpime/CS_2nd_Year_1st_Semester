gender <- read.delim("tests.tsv")

gender$gender <- ifelse(gender$gender == 1, "Male", 
                    ifelse(gender$gender == 2, "Female",
                        ifelse(gender$gender == 3, "Other",
                            ifelse(gender$gender == 0, "Unanswered", gender$gender))))

# print(gender$gender)


gender$extroversion <- round((gender$E1 + gender$E2 + gender$E3) / 15, 2)
gender$neuroticism <- round((gender$N1 + gender$N2 + gender$N3) / 15, 2)
gender$agreeableness <- round((gender$A1 + gender$A2 + gender$A3) / 15, 2)
gender$conscientiousness <- round((gender$C1 + gender$C2 + gender$C3) / 15, 2)
gender$openness <- round((gender$O1 + gender$O2 + gender$O3) / 15, 2)



# print(paste(gender$extroversion[1], gender$neuroticism[1], gender$agreeableness[1], gender$conscientiousness[1], gender$openness[1]))

write.csv(gender, "analysis.csv", row.names = FALSE)
