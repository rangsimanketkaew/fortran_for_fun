! 1D-Array

! program arr
!     implicit none
!     integer :: vec(3) ! [m1, m2, m3]
!     vec(1) = 32
!     vec(2) = 128
!     vec(3) = -1024
!     print *, vec
! end program arr

! program arr
!     implicit none
!     integer, dimension(3) :: vec, vec_2, vec_3
! end program arr

! program arr
!     implicit none
!     integer :: vec(-1:2) ! (start index : end index)
!     vec(-1) = 32
!     vec(0) = 18
!     vec(1) = 18
!     vec(2) = 18
!     print *, vec
! end program arr

! program arr
!     implicit none
!     integer :: vec(-1:3) ! (start index : end index)
!     vec(-1) = 32
!     vec(0) = 18
!     vec(1) = 18
!     vec(2) = 17
!     vec(3) = 16
!     print *, vec(1:3) ! sub-array ==> 1,2,3
! end program arr

! assignment to array : literal arrays

! program  arr
!     implicit none
!     integer :: vec(3) = (/10, 24, 56/) ! == [ ]
!     ! vec = 
!     print *, vec
! end program  arr

! substitution

! program arr
!     implicit none
!     integer :: a(3), b(3)
!     a = [1,2,3]
!     b = a
!     print *, a
!     print *, b
! end program arr

! Unknown size of an array > allocate array

! program arr
!     implicit none
!     integer, allocatable :: vec(:) ! 1 dimension
!     integer :: n
!     n = 5
!     allocate(vec(n))
!     read *, vec
!     print *, vec
!     deallocate(vec)
! end program arr

! Math

! program arr
!     implicit none
!     integer :: a(3), b(3), c(3)
!     a = [1,2,3]
!     b = [2,3,4]
!     c = a - b ! + - / * **
!     print *, c
! end program arr

! Elemental functions

! program arr
!     implicit none
!     real :: x(3) = [1.0, 1.1, 1.2]
!     print *, sin(x)
! end program arr

! program arr
!     implicit none
!     real :: x(3)
!     logical :: status(3)
!     x = [1.0, 1.1, 1.2]
!     print *, x <= 1.1
!     status = x <= 1.1 ! can be saved to a logical copy array
!     print *, status
! end program arr

! Array function (built-in function) in Fortran
! size(x), sum(x), minval(x), maxval(x), minloc(x), maxloc(x)
! dot_product(x, y), count(a), all(x), any(a)

! program arr
!     implicit none
!     real :: x(3)
!     logical :: status(3)
!     x = [1.0, 1.1, 1.2]
!     print *, sum(x, x> 1.0) ! 1.1 1.2

!     ! equivalent
!     status = x>1.0
!     print *, status
!     print *, sum(x,mask=status)
! end program arr

! Multi-dimensional array
! 2D array ==> Matrix

! program arr
!     implicit none
!     integer :: mat(2,2) ! 2D
!     mat(1,1) = 10
!     mat(1,2) = 20
!     mat(2,1) = 30
!     mat(2,2) = 40
!     print *, mat
! end program arr

! [ 10 20 ]      [10]
! [ 30 40 ] -->  [30]
!                ----
!                [20]
!                [40]
! column vector ==> Column-major storage

! Order memory

program arr
    implicit none
    integer :: mat(2,2)
    read *, mat
    print *, mat
    print *, size(mat)
    print *, shape(mat)
end program arr
