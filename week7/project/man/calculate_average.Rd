\name{calculate_average}
\alias{calculate_average}

\title{Average Calculator}

\description{
    This function receives as an input a vector of grades, calculating and
    returning then the average. It also creates a table for a better 
    visualization with the subjects and the respective grades.
}

\usage{
    calculate_average(grades)
}

\arguments{
    \item{grades}{
        Grades is a vector of 8 numeric values.
    }
}

\value{
    Returns the average of the values in the grades vector.
}

\examples{
    grades <- c(95, 70, 84, 100, 73, 89, 79, 70)
    calculate_average(grades)
}