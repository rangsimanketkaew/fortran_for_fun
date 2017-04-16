program solve_q
      real:: a, b,c
      real::discriminant
      real::x1, x2
      print*, "Type a,b,c which are coofficient of your Quardratic equation."
      read *, a, b, c
      print*, "Your equation is ==> ","(",a,"x^2) + ","(",b,"x) + ","(",c,")"," = 0"
      discriminant = b**2 - 4*a*c
      if (discriminant>0 ) then
              x1 = ( -b + sqrt(discriminant)) / (2 * a)
              !and
              x2 = ( -b - sqrt(discriminant)) / (2 * a)
              print *,"-----------------------------------------------------------------------"
              print *, "Answer_1 =",x1, "Answer_2 =",x2
              print *,"-----------------------------------------------------------------------"
      else if( discriminant==0) then
              x1= -b/(2*a)
              print*,x1
      else
        print *, "No real root for your equation"
      end if
end program solve_q
