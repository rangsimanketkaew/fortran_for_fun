PROGRAM CALC
!Test
!run cal interest
REAL :: money, rate, howlong, results
PRINT*, "How Much"
READ*, money
PRINT*, "The amount =", money, "THB"
PRINT*, "Enter Rate"
READ*, rate
PRINT*, "% rate =", rate, " %"
PRINT*, "Month ?"
READ*, howlong
PRINT*, "How long =", howlong, " months"
results = (money*rate*howlong)/100
PRINT*, "The interest =", results, "THB"
PRINT*, "---------JOB DONE----------"

STOP
END
