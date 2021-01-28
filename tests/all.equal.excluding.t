{ # Define all.equal.excluding for use below
  all.equal.excluding <- function(x, y, ..., excluding=NULL, attrs=NULL){
    # Like all.equal, but exclude components in `excluding',
    #   and excluding attributes named in `attrs'.
    #
    # `excluding' and `attrs' should be character, names of components
    #   and attributes.
    #
    # For example:
    #   all.equal.excluding(obj1, obj2, excluding = c("call", "x"))
    for(i in intersect(names(x), excluding)) x[[i]] <- NULL
    for(i in intersect(names(y), excluding)) y[[i]] <- NULL
    for(i in intersect(names(attributes(x)), attrs)) attr(x,i) <- NULL
    for(i in intersect(names(attributes(y)), attrs)) attr(y,i) <- NULL
    all.equal(x,y, ...)
  }
  TRUE
}

{ # This test will fail, because the call component of fit1 and fit2 differ
  y <- rnorm(30)
  x <- matrix(rnorm(60), ncol=2)
  df <- data.frame(x,y)
  fit1 <- lm(y~x)
  fit2 <- lm(y~x, data = df)
  all.equal(fit1, fit2)
}

{ # This exclude the call component, and should pass
  all.equal.excluding(fit1, fit2, excluding = c("call"))
}

{ # Cleanup
  rm(all.equal.excluding, x, y, df, fit1, fit2)
}
