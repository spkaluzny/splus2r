# Some functions that were previously in package muS2RC
#   "Splus to R Compatibility for package muStat"
# Authors of muS2RC are Knut M. Wittkowski and Tingting Song
# Modifications here by Tim Hesterberg.
`MC` <- function(f, env = NULL) {
      # MC stands for "make closure". It allows the same function to
      # be used in S-PLUS and R, avoiding scoping problems in the
      # former.
      f
}
