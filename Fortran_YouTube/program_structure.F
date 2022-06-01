!=========================================
!
! Program Structure
!   - External procedure
!   - Internal procedure
!
! External Function & Subroutine (+ Scope of Variables)
!   - "external"
!   - "interface"
! Internal Function & Subroutine
!   - "contains"
!
!=========================================
!
!-----------------------------------------
! External Function
!-----------------------------------------

! program custom
!     implicit none
!     real :: a,b

!     interface
!        function cubicroot(x) result(v)
!           implicit none
!           real,intent(in) :: x
!           real :: v
!        end function cubicroot
!     end interface
 
!     ! use a custom function as a regular function
!     read *,a
!     b = cubicroot(a)
!     print *,b
!  end program custom
 
! function cubicroot(x) result(v)
!     implicit none
!     real,intent(in) :: x
!     real :: v
!     v = x**(1.0/3.0)
! end function cubicroot

!-----------------------------------------
! Scope of Variables
!-----------------------------------------

! program custom
!     implicit none
!     real :: a,b,cubicroot
 
!     ! This a is unrelated to the function's a.
!     read *,a
!     b = cubicroot(a)
!     print *,b
! end program custom

! function cubicroot(x) result(v)
!     implicit none
!     real,intent(in) :: x
!     real :: v,a
!     ! This a is a local variable exclusively used in this function.
!     a = (1.0/3.0)
!     v = x**a
! end function cubicroot
!
!-----------------------------------------
! External Subroutine
!-----------------------------------------
!
! program custom
!     implicit none
!     real :: a,b,c,v1,v2
!     interface
!        subroutine solutions_quadratic_equations(a,b,c,s1,s2)
!           implicit none
!           real,intent(in) :: a,b,c
!           real,intent(out) :: s1,s2
!        end subroutine solutions_quadratic_equations
!     end interface
 
!     ! use a custom function as a regular function
!     read *,a,b,c
!     call solutions_quadratic_equations(a,b,c,v1,v2)
!     print *,v1,v2
! end program custom

! subroutine solutions_quadratic_equations(a,b,c,s1,s2)
!     implicit none
!     real,intent(in) :: a,b,c
!     real,intent(out) :: s1,s2
!     real :: d
!     d = b**2 - 4*a*c
!     if(d>=0) then
!        s1 = (-b + sqrt(d))/(2*a)
!        s2 = (-b - sqrt(d))/(2*a)
!     else
!        print *,'b**2 - 4*a*c < 0'
!        stop
!     end if
! end subroutine solutions_quadratic_equations
!
!
!-----------------------------------------
! Internal Function and Subroutine
!-----------------------------------------

! program custom
!     implicit none
!     real :: a,b,c,v1,v2
 
!     read *,a,b,c
!     call solutions_quadratic_equations(a,b,c,v1,v2)
!     print *,v1,v2
 
! contains  !!!
! subroutine solutions_quadratic_equations(a,b,c,s1,s2)
!     real,intent(in) :: a,b,c
!     real,intent(out) :: s1,s2
!     real :: d
!     d = b**2 - 4*a*c
!     if(d>=0) then
!        s1 = (-b + sqrt(d))/(2*a)
!        s2 = (-b - sqrt(d))/(2*a)
!     else
!        print *,'b**2 - 4*a*c < 0'
!        stop
!     end if
! end subroutine solutions_quadratic_equations
! end program custom

! Shared Variables ??

! program custom
!     implicit none
!     real :: a,b,c,s1,s2
 
!     read *,a,b,c
!     call solutions_quadratic_equations()
!     print *, s1,s2
 
! contains
! subroutine solutions_quadratic_equations()
!     real :: d
!     d = b**2 - 4*a*c
!     if(d>=0) then
!        s1 = (-b + sqrt(d))/(2*a)
!        s2 = (-b - sqrt(d))/(2*a)
!     else
!        print *,'b**2 - 4*a*c < 0'
!        stop
!     end if
! end subroutine solutions_quadratic_equations
! end program custom

!-----------------------------------------
! Internal Procedure in External Procedure
!-----------------------------------------

program custom
    implicit none
    real :: a,b,c
    ! interface
    !    subroutine print_status(a,b,c)
    !       implicit none
    !       real,intent(in) :: a,b,c
    !    end subroutine print_status
    ! end interface
    external print_status
 
    read *,a,b,c
    call print_status(a,b,c)
end program custom
 
subroutine print_status(a,b,c)
    implicit none
    real,intent(in) :: a,b,c
 
    if ( discriminant(a,b,c) >=0 ) then
       print *,'The equation has real solutions.'
    else
       print *,'The equation has imaginary solutions.'
    end if
 
contains
function discriminant(a,b,c) result(d)
    real,intent(in) :: a,b,c
    real :: d
    d = b**2 - 4*a*c
end function discriminant

end subroutine print_status
