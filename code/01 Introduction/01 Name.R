# We use this for processing the answer
# In programming, we "stand on the shoulders of giants"
library(stringi)   

# This gets the input from the user.
# The result is stored in a variable
# Variables are important in programming!
name <- readline(prompt="Enter a name: ")

# We call a specially designed function to get the answer
# In R, we call functions all the time
# A function is a "mini-program"
ans <- stri_reverse(name)

# After all this work, we output the result
cat("The reverse of ", name, "is ===>", ans)


