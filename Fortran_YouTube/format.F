! Format in Fortran
! "(descriptor)"
! "(descriptor1,descriptor2, ...)"

! program form 
!     print *, 123
!     print "(i5)", 123
!     write (*, "(i2)") 123
!     write (*,"(i5,i8,i4)") 123, 456, 789
!     write (*,"(i5,i5,i5)") 123, 456, 789
!     write (*,"(3(i5))") 123, 456, 789
!     write (*,"(3i5)") 123, 456, 789
!     write (*,"(*(i5))") 123, 456, 789, 102, 454
! end program

! program form
!     implicit none
!     character(len=32) :: fmt
!     fmt = "(*(i5))"
!     print fmt, 123, 456, 876, 453
! end program form

! program form
!     implicit none
!     integer :: a(3)
!     a = [5,6,7]

!     ! all the same output
!     print "(3i5)", 5,6,7
!     print "(3i5)", a
!     print "(*(i5))", a
!     ! different for the last one
!     print "(2i5,i8)", a
! end program form

! program form
!     implicit none
!     print "(i6)", 123
!     print "(i0)", 123
!     print "(i6.4)", 123
!     print "(i6.6)", 123
! end program form

! Formatting real/floating number

! program form
!     implicit none
!     real :: pi = 3.1415926

!     print "(f8.3)", pi    ! Standard floating number
!     print "(e11.3)", pi   ! exponential number ==> significand is between 0 - 1
!     print "(es11.3)", pi  ! except significand ==> the best for scientific number
!     print "(g11.3)", pi   ! choose automatically between f and e
! end program form

! program form
!     implicit none
!     print "(A)", "This is Fortran online course"
!     print "(A40)", "This is Fortran online course"
! end program form

! Space descriptor ==> x
! New line ==> /

! program form
!     implicit none
!     ! print "(a,3x,a)", "abc", "def"
!     print "(a,/,a)", "abc", "def"
! end program form

program form
    implicit none
    print "('result = ',i8,/)", 4+5,6+4,4+2
end program form
