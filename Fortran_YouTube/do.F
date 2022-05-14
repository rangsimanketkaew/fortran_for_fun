! Flow control: Do loop

! program do
!     implicit none
!     integer :: i
!     do i=1, 10, 2  ! start, stop, [increment/step]
!         print *, i, "Hello World"
!     end do
! end program do

! program do
!     implicit none
!     integer :: i, power
!     do i=1, 5  ! 5 loops
!         do power=1,3   ! 3 loops
!             print *, i, power, i**power
!         end do
!     end do
! end program do

! program factorial
!     implicit none
!     integer :: i, r, fact

!     read *, r
!     fact = 1

!     do i=1, r
!         fact = fact * i
!     end do

!     print *, "Factorial of ", r, " ==> ", fact
    
! end program factorial

! program exit_do
!     implicit none
!     integer :: i, isquare

!     do i=1,10
!         isquare = i**2
!         if (isquare > 25) exit  ! simple statement 
!         print *, isquare
!     end do
! end program exit_do

! Decrement

program loop
    implicit none
    integer :: i

    do i=5,1,-1 ! start = 5, stop = 1, decrement = -1
        print *, i ! 5, 4, 3, 2, 1
    end do

end program loop