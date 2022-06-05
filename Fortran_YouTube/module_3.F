module my_mod
    implicit none
    integer :: number = 0
    real, parameter :: pi = 3.1415926
contains
end module my_mod

subroutine my_sub(n) !! Assign a new value into "number"
    use my_mod
    integer, intent(in) :: n
    number = n
end subroutine my_sub

program my_main
    use my_mod, only : pi  ! looking for my_mod.mod
    implicit none
    external my_sub

    print *, number
    call my_sub(50)
    print *, number
end program my_main


! order of compilation
