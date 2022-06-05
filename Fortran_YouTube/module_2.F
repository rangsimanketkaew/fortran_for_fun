! Accessibility

module my_mod
    implicit none
    private  !!! block access from outside module by default
    public x, z  !! can be used outside => read/write
    protected z  !! read only
    private y  !! no permission
    integer :: x = 10, y=15, z=8
contains
    
end module my_mod

program my_main
    use my_mod
    implicit none

    print *, x
    x = 50
    print *, x
    print *, z
    z = 15
    
end program my_main
