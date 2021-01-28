# Use this file to test:
#   are objects created here used?
#   removing objects

{
  x <- 5
  all.equal(x+3, 8)
}

{
  # rm(x)
  remove("x")
  TRUE
}
