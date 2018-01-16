## Part 1: Debugging

my.num <- 15
initials <- "D. B."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# You cannot add chracters to numbers.

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# We havent put in the library yet, we need to actually add it/initialize it

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# We dont have a variable called 'initial'


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be

whatIsThis <- 1
print(typeof(whatIsThis))

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(vectorOne, vectorTwo) {
  difference <- abs(nchar(vectorOne) - nchar(vectorTwo))
  toReturn <- paste("The difference in length is", difference)
  return(paste("The difference in length is", difference))
}

# Pass two vectors of different length to your `CompareLength` function
print(CompareLength("Hi", "Bye"))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(vectorOne, vectorTwo) {
  difference <- nchar(vectorOne) - nchar(vectorTwo)
  if (difference < 0){
    return(paste("Your second vector is longer by", abs(difference), "elements"))
  } else {
    return(paste("Your first vector is longer by", difference, "elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function

print(DescribeDifference("Hi", "Bye"))

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

CombineVector <- function(vecOne, vecTwo, vecThree) {
  return(c(vecOne, vecTwo, vecThree))
}

# Send 3 vectors to your function to test it.
print(CombineVector("Hi", "bye", "lie"))

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(courseNames) {
  return(tolower(courseNames))
}

print(CapsTime("HAH, It doES WoRK"))
