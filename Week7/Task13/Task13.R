## Libraries
library(tidyverse) 
library(readr)
library(stringr)


## Read in Data Sets
RL <- readr::read_lines("https://raw.githubusercontent.com/WJC-Data-Science/DTS350/master/randomletters.txt")
RLN <- readr::read_lines("https://raw.githubusercontent.com/WJC-Data-Science/DTS350/master/randomletters_wnumbers.txt")


## Pull Out Every 1700th letter and find quote hidden
# Sequence to iterate through each letter
mySeq <- seq(from = 0, to = str_length(RL)/1700)
mySeq
# Attach Every 1700th (and 1st) character to letters1
letters1 <- str_sub(RL,start = 1,end = 1)
letters1
for (i in mySeq) {
  letters1 <- str_c(letters1, str_sub(RL, start = i*1700,end=i*1700))
}
letters1
# Complete phrase (End after period)
phrase <- str_split(letters1, "\\.")[[1]][1]
phrase


## Find All Hidden Numbers and Convert them into Letters
# Extract all Numbers and Combine Numbers next to eachother
numbers1 <- str_extract_all(RLN, ("\\d+"))
numbers1
# Sequence to iterate through numbers
mySeq2 <- seq(1, length(numbers1[[1]]))
mySeq2
# Vector for Appending Letters
numbers2 <-c()
# Convert Numbers to Letters
for(i in  mySeq2) {
  numbers2[i] = letters[as.numeric(numbers1[[1]][i])]
}
numbers2
# Flatten Letters so it is readable
str_flatten(numbers2)


## Find largest Polindrome
str_extract_all(RL, "(.)(.)(.)(.)\\4\\3\\2\\1")


## Remove All Spaces and Periods and Find Longest Sequence of Vowels
# Remove All Spaces and Periods
RLEDIT <- RL %>%
  str_remove_all("[ ]") %>%
  str_remove_all("[.]")
RL
RLEDIT  
# Find Longest Sequence of Vowels
str_extract_all(RLEDIT, ("[aeiou]{7}"))

