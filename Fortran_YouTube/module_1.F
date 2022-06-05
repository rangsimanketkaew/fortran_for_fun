! Module
module my_first_mod
    implicit none
    real, parameter :: pi = 3.1415926
    real            :: test_number = 0

contains
function mean(x) result(m)
    real, intent(in)  :: x(:)
    real :: m
    m = sum(x) / size(x)
end function mean

end module my_first_mod

! My main program
program my_main
    use my_first_mod

    implicit none
    real, allocatable :: x(:) 
    
    allocate(x(5))
    x =  [2.8, 2.5, 1.0, -2.6, 10.5]

    ! WE can use anything defined in my_first_mod 
    ! withtout declaration again
    print *, pi
    print *, sqrt(pi)
    print *, sqrt(2*pi)
    test_number = 10
    print *, test_number
    print *, "Mean of x = ", mean(x)
    
end program my_main