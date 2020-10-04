library(stringi) 
library(stringr)
# Look at the output…
# Is there any way you might change or improve this?
#   Think in terms of transforming the output in some further way
# Do you think R might have a function that could help?
  
# How about: str_trim(), str_length(), str_detect(), 
#            str_to_lower(), str_to_title(), str_to_upper(),
#            str_replace(), str_replace_all()
    

name <- readline(prompt="Enter a name: ")

ans <- stri_reverse(name)

cat("The reverse of ", name, "is ===>", str_to_title(ans))


