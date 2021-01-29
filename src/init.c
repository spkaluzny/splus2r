#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* .Call calls */
extern SEXP dotCallable_splus2Rpeaks(SEXP, SEXP, SEXP, SEXP);

static const R_CallMethodDef CallEntries[] = {
    {"dotCallable_splus2Rpeaks", (DL_FUNC) &dotCallable_splus2Rpeaks, 4},
    {NULL, NULL, 0}
};

void R_init_splus2R(DllInfo *dll)
{
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
