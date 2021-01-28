c %Z%%Q%
      subroutine splus2Rpeaks(x,halfspan,strict,n,m,out)
C uncomment next line for verifying everything is declared
C     implicit undefined (a-z)
C out and o logically should be logicals, but would have to
C change Splus function peaks and what else to reflect that.
      integer n, m
      double precision x(n,m), out(n,m)
      integer halfspan
      logical strict

      double precision t, o
      integer i, j, k, ik

      do 300 j=1,m
      do 200 i=1,n
          t=x(i,j)
          o=1.0
          do 100 k=-halfspan,halfspan
              ik=i+k
              if(ik.le.0.or.ik.gt.n) then
                  o=0.0
                  go to 200
              else
                  if(k.eq.0)go to 100
                  if (strict) then
                      if (t.le.x(ik,j)) then
                      o=0
                      go to 200    
                      endif
                  else
                      if (t.lt.x(ik,j)) then
                      o=0
                      go to 200
                      endif
                  endif
              endif
100       continue
          out(i,j)=o
200   continue
300   continue
      return
      end
