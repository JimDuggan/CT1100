# INPUT - PROCESS - OUTPUT
# First we need to get the input
temp_str <- readline(prompt="Temperature in Celcius: ")

# Convert the input from a string to a number (numeric)
temp     <- as.numeric(temp_str)


# Do our temperature conversion
fahr     <- 9/5 * temp + 32

# Output the answer
cat(temp," Celsius converts to ",fahr," Fahrenheit\n")









