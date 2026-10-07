calculate_mbi <- function(weight, height) {
    return(mbi <- round(weight / height^2, 2))
}

bmi_category <- function(mbi) {
    if (mbi < 18.5) {
        return("Underweight")
    } else if (mbi >= 18.5 && mbi < 25) {
        return("Normal")
    } else if (mbi >= 25 && mbi < 30) {
        return("Overweight")
    } else if (mbi >= 30) {
        return("Obese")
    }
}

mbi <- calculate_mbi(60, 1.69)
print(paste("Your MBI is:", mbi, ",", bmi_category(mbi)))