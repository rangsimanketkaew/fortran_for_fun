! Flow Control: Case

! program if
!     implicit none
!     integer :: x = 1

!     if (x == 1) then
!         print *, "Case 1"
!     else if (x == 2 .or. x == 3) then
!         print *, "Case 2 or Case 3"
!     else 
!         print *, "Failed"
!     end if

! end program if

! program case
!     implicit none
!     integer :: x = 5

!     select case(x)
!     case(1)
!         print *, "Case 1"
!     case(2, 3)
!         print *, "Case 2 or Case 3"
!     case default
!         print *, "Failed"
!     end select
! end program case

! program month_
!     implicit none
!     character(len=10) :: month = "March"
!     integer :: num_days

!     select case (month)
!     case ("January", "December")
!         num_days = 31
!     case ("February")
!         num_days = 28
!     case ("March")
!         num_days = 31
!     case default
!         num_days = 30
!     end select
! end program month_

! Complex case

program case_2
    implicit none
    integer :: num, range

    read *, num

    select case(num)
    case(:-10, 10:) ! <=-10 or >= 10
        range = 1
    case(-5:-3)     ! -5, -4, -3
        range = 2
    case(-2, 2)     ! -2, -1, 0, 1, 2
        range = 3
    case(5:6, 7:9)  ! 5, 6, 7, 8, 9
        range = 4
    case(4)         ! 4
        range = 5
    case default    ! else
        range = 6
    end select
    print *, "Range = ", range

end program case_2
