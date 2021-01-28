# This is a file to test do.test from R

{ # should pass
  TRUE
}

{ # should fail
  FALSE
}

all.equal(1, 3-2)

all.equal(1, 4-2)
# Will this comment go with first or second?  (Turns out it is completely lost)
all.equal(1, 5-2)

{ # test warning - should pass
  warning("This is a warning")
  TRUE
}


{ # something between warning and stop - should fail
  FALSE
}


{ # test stop
  stop("This is a stop")
  TRUE
}

{ # test after the stop
  FALSE
}
