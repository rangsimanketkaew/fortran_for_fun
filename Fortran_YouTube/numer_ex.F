! program num
!     implicit none
!     print *, 100, -1, 3.14, 6.02e23
! end program num

! program num
!     implicit none
!     print *, "Avogadro constant = ", 6.02e23
! end program num

! program operator
!     implicit none
!     print *, 1+((6*4)**2) / 2 -8 /4+2
! end program operator

!! Type of results

! program type_result
!     implicit none
!     print *, "3/2        = ", 3/2     ! integer / integer
!     print *, "3.0/2      = ", 3.0/2   ! real / integer
!     print *, "3/2.0      = ", 3/2.0   ! integer / real
!     print *, "3.0/2.0    = ", 3.0/2.0 ! real / real
! end program type_result

! program convert_num
!     implicit none
!     print *, "3/2    =", 3/2        ! int / int
!     print *, "3/2    =", 3/real(2)  ! int / real
!     print *, "3/2    =", real(3)/2  ! real / int
!     print *, "3/2    =", real(3/2)  ! real / int
! end program convert_num

! program simple_func
!     implicit none
!     print *, cos(sin(3.14))         ! nested function
!     print *, cos(sin(3.14)**2) / 2  ! mixed operation
! end program simple_func

! Precision (one of the most important thing you need to know!!)

program double
    implicit none
    ! print *, int(1234567890,kind=8)*2       ! 2^31 - 1 // overflow
    print *, 3.14159265359                   ! too precise real number
    print *, 3.14159265359d0                 ! double precision
    print *, dble(2)*10                  ! mixed precision
    print *, 0.1                        ! not exactly expressed in computer
    print *, 0.1d0                      ! same in double precision
end program double
