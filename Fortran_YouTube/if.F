! Flow Control: If-Else

! Nested If --> If ซ้อน If

! Find the minimum of a, b, and c

! program minimum
!     implicit none
!     integer :: a, b, c
!     integer :: result
!     read *, a, b, c

!     if (a < b .and. a < c) then
!         result = a
!     else if (b < a .and. b < c) then
!         result = b
!     else 
!         result = c
!     end if

!     print *, "The minimum is ", result

! end program minimum

! Grade calculator

program calc
    implicit none
    integer :: x
    character(len=1) :: grade

    read *, x

    if (x < 50) then
        grade = 'F'
    else if (x < 60) then
        grade = 'D'
    else if (x < 70) then
        grade = 'C' 
    else if (x < 80) then
        grade = 'B'
    else 
        grade = 'A'
    end if

    print *, "The final grade = ", grade

end program calc