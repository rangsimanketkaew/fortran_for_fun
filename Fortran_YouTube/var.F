! Some Details of Variables 

! Implicit data type
! program var
!     implicit none
!     integer :: john, kathy, george
!     john = 1 ! implicit integer
!     kathy = 2 ! implicit integer
!     george = 3 ! implicit real
!     print *, john, kathy, george
! end program var

! Uninitialized variables
! program var
!     implicit none
!     integer :: a
!     print *, a ! uninitialized variables --> initial value = 0
!     a = 10
!     print *, a
! end program var

! Not-a-number (NaN) and infinity
! program var
!     implicit none
!     real :: a
!     a = 0.0
!     print *, log(a)  ! 1/e^{Infinity} ==> 0.0
!     print *, a/a ! Indeterministic
!     print *, 1/a   ! 1/0 ==> Infinity
! end program var

! Variable initialization
! program name
!     implicit none
!     real :: a = 0.0, b = 1.0
!     print *, log(a+b)
!     print *, a / (a+b)
!     print *, 1 / (a+b)
! end program name

! Constant (Parameter)
program var
    implicit none
    integer, parameter :: dp = selected_real_kind(15,307) ! double precision for real
    real(dp), parameter :: pi = 3.1415926
    print *, pi
    print *, pi*2
end program var
