# This file tests expectWarnings
#

{
  # No problem here
  TRUE
}

expectWarnings({
  # Should pass; Expect a warning here
  warning("abc")
  TRUE
}, "abc")


{ # Define a function
  f <- function(x, two = FALSE){
    warning("in f")
    if(two)
      warning("This is a second warning")
    x
  }
  TRUE
}

expectWarnings({
  # Should pass; Expect a warning here
  f(3)
  TRUE
}, "in f")

expectWarnings({
  # Should pass; Expect two warnings here
  f(3, TRUE)
  TRUE
}, c("in f", "This is a second warning"))


expectWarnings({
  # Should pass; Expect two warnings here, partial match on second warning
  f(3, TRUE)
  TRUE
}, c("in f", "This is a second"))

expectWarnings({
  # Should fail - Test result (not return TRUE)
  f(3)
  "abc"
}, "in f")

expectWarnings({
  # Should fail - indicate that an unexpected warning occured
  f(3, TRUE)
  TRUE
}, "in f")


expectWarnings({
  # Should fail - indicate that an expected warning did not occur
  f(3)
  TRUE
}, c("in f", "When in the course of human events"))

{ # cleanup
  rm(f)
  TRUE
}
