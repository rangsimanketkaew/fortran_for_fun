! Function
! add(a,b)

! Function func(i) result(j)
!     integer, intent (in) :: i ! input
!     integer              :: j ! output

!     j = i**2 + i**3
! end Function

Function func(i)
    integer, intent (in) :: i ! input
    integer              :: func ! output

    func = i**2 + i**3
end Function

program main
    implicit none
    integer :: i 
    integer :: func

    i = 3
    print *, "Sum of the square and cube of ", i, "is", func(i)

end program main

! Recursion
! ==> Calculate factorial of integer
! 5! = 5x4x3x2x1 = 120
! n! = n x (n-1) x (n-2) x .. x (1)
recursive function fact(i) result(j)
    integer, intent(in) :: i
    integer             :: j

    if (i == 1) then
        j = 1
    else
        j = i * fact(i - 1)
    end if
end function fact
