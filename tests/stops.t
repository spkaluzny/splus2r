# This file tests expectStop
# Still need combination of expectWarnings and expectStop

{
  # No problem here
  TRUE
}

{ # Define a function
  f <- function(x, msg = "function stopped"){
    stop(msg)
    x
  }
  TRUE
}

expectStop({
  # Should pass; Expect a stop here
  f(3)
  TRUE
}, "function stopped")

expectStop({
  # Should pass; Expect a stop here
  f(3, "custom stop")
  TRUE
}, "custom")

expectStop({
  # Should fail; wrong message
  f("abc")
}, "sugar and spice")

expectStop({
  # Should fail; failure to stop
  TRUE
}, "expect this message if a stop occurs")


expectStop({
  # Should fail; failure to stop
  "ordinary return, but not TRUE"
}, "expect this message if a stop occurs")


{ # cleanup
  rm(f)
  TRUE
}
