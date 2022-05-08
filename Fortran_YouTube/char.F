! Character variable 

! program name
!     implicit none
!     character(len=12) :: name1, name2
!     name1 = "John Smith"
!     name2 = "Chris McDonald"
!     print *, name1, " and ", name2
! end program name

program name
    implicit none
    character(len=12) :: name1
    name1 = "John Smith"
    ! print *, name1(3:7)  ! (start_index : end_index)
    ! print *, name1(3:3)
    name1(6:10) = "White"
    print *, name1
end program name