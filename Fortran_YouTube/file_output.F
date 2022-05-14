! Input & Standard output & File output 
! Input: read
! Output: write, print

! 1. Read input entered by users
! program read_input
!     implicit none
!     integer :: i, j

!     print *, "Enter two integer numbers"
!     read(*,*) i, j
!     print *, "Your inputs are ", i, " and ", j
! end program read_input

! 2. Write results to a file
program write
    implicit none
    integer :: i, j
    integer, parameter :: output_unit = 12

    print *, "Enter two integer numbers"
    read(*,*) i, j
    print *, "Your inputs are ", i, " and ", j

    open(output_unit, file="result.txt", action="write", status="replace")
    write(output_unit,*) "The product between ", i, " and ", j
    write(output_unit,*) "is ", i*j
    close(output_unit)
end program write
