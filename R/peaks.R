"peaks" <- 
function(x, span = 3, strict = TRUE, endbehavior = 0)
{
    span <- as.integer(span)
    if(span %% 2 != 1) {
        span <- span + 1
        cat("span increased to next odd value: ", span, "\n")
    }
    if(!(endbehavior %in% c(0, 1, 2))) {
        stop("endbehavior value of ", endbehavior,
            " is not valid, must be one of: 0, 1 or 2")
    }
    halfspan <- (span - 1)/2
    a.x <- attributes(x)
    dfp <- inherits(x, "data.frame")
    x <- as.matrix(x)
    dx <- dim(x)
    if(length(wna <- which.na(x))) {
        x.ok <- rep(TRUE, length(x))
        x.ok[wna] <- FALSE
        m <- min(x[x.ok])
        x[!x.ok] <- m - 1
    }
    z <- .Call("dotCallable_splus2Rpeaks", x, halfspan, strict, endbehavior)
    if(dfp) {
        z <- as.data.frame(z)
    }
    attributes(z) <- a.x
    z
}
