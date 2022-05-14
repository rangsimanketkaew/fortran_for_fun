program arr
    implicit none
    integer :: a(3), b(3), c(3)
    a = [1,2,3]
    b = [2,3,4]
    c = a + b
    print *, c
    c = a - b
    print *, c
    c = a / b
    print *, c
    c = a * b
    print *, c
    c = a ** b
    print *, c
end program arr