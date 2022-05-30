! Subroutine
! square
! call square(...)

Subroutine square_cube(i, isquare, icube)
    integer, intent (in)  :: i ! input
    integer, intent (out) :: isquare, icube ! output

    isquare = i**2
    icube = i**3
end Subroutine

program main
    implicit none
    external square_cube  ! external subroutine
    integer :: i, isquare, icube

    ! Call subroutine
    i = 5
    call square_cube(i, isquare, icube)
    print *, "i = ", i
    print *, "i^2 =", isquare
    print *, "i^3 =", icube

end program main

! INTENT
! intent (in)
! intent (out)
! intent (inout) = intent (in out)

