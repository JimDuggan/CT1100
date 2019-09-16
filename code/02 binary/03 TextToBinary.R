library(binaryLogic)

name <- "C"

ascii_code <- utf8ToInt(name)

name_hex <- charToRaw(name)

3*16^0 + 4*16^1

name_bits <- rawToBits(name_hex)

1*2^0 + 1*2^1 + 1*2^6
