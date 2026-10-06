\name{check_pass}
\alias{check_pass}

\title{Final Evaluator}

\description{
    This function receives the letter grade, and based on that, it
    decides whether the student passed or not. If the student receives 
    an A, B, C, or D, they pass. If they receive an F, they fail.
}

\usage{
    check_pass(final_class)
}

\arguments{
    \item{final_class}{
        final_class is the letter grade corresponding to the average value.
    }
}

\value{
    Returns a message saying whether the student passed or failed.
}

\examples{
    final_class <- "A"
    check_pass(final_class)
}