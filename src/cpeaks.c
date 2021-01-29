#include <R.h>
#include <Rinternals.h>

// .Call("dotCallable_splus2Rpeaks", x, halfspan, strict, endbehavior)
// This C code will ensure that the arguments have the expected types,
// converting x to numeric if needed, and returns a logical vector
// the shape of the 'x' input indicatiing where the peaks are.
// It also handles NA's, returning NA if there is an NA in span being checked.
// endbehavior is integer in {0,1,2}:
//    0 => no peaks at ends (return FALSE at ends)
//    1 => use available data at ends (e.g., 1:10 will have peak at 10th position for any halfSpan>0)
//    2 => return NAs at ends
//    These are as if 'x' were surrounded by infinitely long runs of Inf (0), -Inf (1), or NA (2) at both ends
SEXP dotCallable_splus2Rpeaks(SEXP sX, SEXP sHalfSpan, SEXP sStrict, SEXP sEndBehavior)
{
    int nProtect = 0;
    int halfSpan = Rf_asInteger(sHalfSpan);
    if (halfSpan < 0) {
        Rf_error("'halfspan' is negative");
    }
    int strict = Rf_asLogical(sStrict);
    int endBehavior = Rf_asInteger(sEndBehavior);
    if (endBehavior < 0 || endBehavior > 2) {
        Rf_error("'endbehavior' must be 0, 1, or 2");
    }
    int isMat = Rf_isMatrix(sX);
    int nrow = isMat ? Rf_nrows(sX) : Rf_length(sX) ;
    int ncol = isMat ? Rf_ncols(sX) : 1;
    sX = !isReal(sX) ? (nProtect++, PROTECT(Rf_coerceVector(sX, REALSXP))) : sX;
    double* pX = REAL(sX);
    SEXP sOut = (nProtect++, PROTECT(isMat ? Rf_allocMatrix(LGLSXP, nrow, ncol) : Rf_allocVector(LGLSXP, nrow))) ;
    int* pOut = INTEGER(sOut);
    for(int j = 0 ; j < ncol ; j++) {
        double* pXCol = pX + j * nrow;
        int* pOutCol = pOut + j * nrow;
        for(int i = 0 ; i < nrow ; i++) {
            double xVal = pXCol[i];
            int isPeak = 1 ; // a peak until proven otherwise
            if (ISNA(xVal)) {
                isPeak = NA_LOGICAL;
            } else {
                int kmin = i - halfSpan;
                if (kmin < 0) kmin = 0;
                int kmax = i + halfSpan;
                if (kmax >= nrow) kmax = nrow - 1;
                for(int k = kmin ; k <= kmax ; k++) {
                    if (k != i) {
                        double t = pXCol[k];
                        if (ISNA(t)) {
                            isPeak = NA_LOGICAL;
                            break;
                        } else if (t > xVal) {
                            isPeak = 0;
                        } else if (strict && t == xVal) {
                            isPeak = 0;
                        }
                    }
                }
                if ((i - halfSpan < 0 || i + halfSpan >= nrow) && isPeak != NA_LOGICAL) {
                    if (endBehavior == 0) {
                        isPeak = 0;
                    } else if (endBehavior == 2) {
                        isPeak = NA_LOGICAL;
                    }
                }
            }
            pOutCol[i] = isPeak;
        }
    }
    UNPROTECT(nProtect);
    return sOut;
}
