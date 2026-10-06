\name{get_grade}
\alias{get_grade}

\title{Grade Evaluator}

\description{
    This function receives an average value and determines the corresponding
    letter grade from A to F, excluding E, based on specific value ranges.
    Additionally, it creates a table to visualize the relationship between
    letter grades and their respective value ranges.
}

\usage{
    get_grade(average)
}

\arguments{
    \item{average}{
        Average is the value that the calculate_average function returns.
    }
}

\value{
    Returns the final grade based on the average value.
}

\examples{
    average <- 82.5
    get_grade(average)
}