# Exploring codes
nums <- utf8ToInt("Hello")

# Back to ASCII
intToUtf8(nums)

as.numeric(0x10)
as.hexmode(100)

x <- 10
lobstr::obj_addr(x)

x <- x *2
lobstr::obj_addr(x)



