! Logical Expression // True and False
! True => .true.
! False => .false.

! program bool
!     implicit none
!     print *, .true.
!     print *, .false.
! end program bool

! Ralational operator (comparison)
! > = greather than  10 > 5 = True
! < = less than      10 < 5 = False
! >= = greather than or equal to  10 >= 5 True
! <= = less than or equal to    10 <= 5 False
! == equal to    10 == 5 False
! /=  unequal to  10 /= 5  True

! program bool
!     implicit none
!     print *, 10 > 9
!     print *, 10 < 5
!     print *, 10 >= 9
!     print *, 10 <= 5 
!     print *, 10 == 5
!     print *, 10 /= 5
! end program bool

! program bool
!     implicit none
!     integer :: x, y
!     x = 10
!     y = 20
!     print *, x > 9
!     print *, x < x+1
!     print *, x == y
! end program bool

! Combinational operator (boolean)
! .and.  .or.   .not.

! program bool
!     implicit none
!     print *, 10>9 .and. 10>=9
!     print *, (10>9) .and. (10>=9)  ! more readable
!     print *, (10<5) .or. (10>5)
!     print *, .not.(10==5)
! end program bool

! program bool
!     implicit none
!     print *, 10>9 .and. .not. 10>=9 .or. 10==9
! end program bool

! Logical equivalence

! ==

program bool
    implicit none
    print *, (10>9) .eqv. .true.
end program bool