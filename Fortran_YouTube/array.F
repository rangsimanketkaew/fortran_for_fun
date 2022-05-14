! ------------
! 1D-Array
! ------------

! program arr
!     implicit none
!     integer :: vec(3) ! [mem1, mem2, mem3]
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
!     integer :: vec(-1:2) ! (start index : end index) = range
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
!     ! integer :: vec(3) = (/10, 24, 56/) ! == [ ]
!     integer :: vec(3) = [10, 24, 56]
!     print *, vec
! end program  arr

! program  arr
!     implicit none
!     integer :: i, vec(10)
!     do i=1,10
!         vec(i) = i
!     end do
!     print *, vec
! end program  arr

! program  arr
!     implicit none
!     integer :: i, vec(10)
!     vec = (/ (i*i, i=1, 10) /) ! 1, 2, 3, ..., 10
!     print *, vec
! end program  arr

! ------------
! substitution
! ------------

! program arr
!     implicit none
!     integer :: a(3), b(3)
!     a = [1,2,3]
!     b = a
!     print *, a
!     print *, b
! end program arr

! ------------
! Math
! ------------

! program arr
!     implicit none
!     integer :: a(3), b(3), c(3)
!     a = [1,2,3]
!     b = [2,3,4]
!     c = a + b
!     print *, c
!     c = a - b
!     print *, c
!     c = a / b
!     print *, c
!     c = a * b
!     print *, c
!     c = a ** b
!     print *, c
! end program arr

! ------------
! Elemental functions
! ------------

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
!     print *, sum(x, x > 1.0) ! 1.1 1.2

!     ! equivalent
!     status = x>1.0
!     print *, status
!     print *, sum(x, mask=status)
! end program arr

! ------------
! Multi-dimensional array
! 2D array ==> Matrix
! ------------

! program arr
!     implicit none
!     integer :: mat(2,2) ! 2D
!     mat(1,1) = 10 ! 1
!     mat(1,2) = 20 ! 3
!     mat(2,1) = 30 ! 2
!     mat(2,2) = 40 ! 4
!     print *, mat
! end program arr

! program arr
!     implicit none
!     integer :: i, j, matrix(3,3)

!     do i = 1, 3
!         do j = 1, 3
!             matrix(i, j) = i+j
!         end do
!     end do
!     print *, matrix
! end program arr

! [ 10 20 ]      [10]
! [ 30 40 ] -->  [30]
!                ----
!                [20]
!                [40]
! column vector ==> Column-major storage

! Order memory

! program arr
!     implicit none
!     integer :: mat(2,2)
!     read *, mat
!     print *, mat
!     print *, size(mat)
!     print *, shape(mat)
! end program arr

! program arr
!     implicit none
!     integer  X(3,5), Y(3,5), I, J
!     Y = 0
!     do I=1,3                       ! I outer loop varies slowest
!         do J=1,5                   ! J inner loop varies fastest
!             X (I,J) = Y(I,J) + 1   ! Inefficient row-major storage order
!         end do                     ! (rightmost subscript varies fastest)
!     end do
! end program arr

! program arr
!     integer  X(3,5), Y(3,5), I, J
!     Y = 0
!     do J=1,5                       ! J inner loop varies slowest
!         do I=1,3                   ! I outer loop varies fastest
!             X (I,J) = Y(I,J) + 1   ! Efficient column-major storage order
!         end do                     ! (leftmost subscript varies fastest)
!     end do
! end program arr

! ------------
! Unknown size of an array > Dynamic array (allocation)
! ------------

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

! program dyn_arr 
!     implicit none 
!     !rank is 2, but size not known   
!     real, dimension (:,:), allocatable :: darray    
!     integer :: s1, s2     
!     integer :: i, j     
    
!     print*, "Enter the size of the array:"     
!     read*, s1, s2      
    
!     ! allocate memory      
!     allocate ( darray(s1,s2) )      
    
!     do i = 1, s1           
!         do j = 1, s2                
!             darray(i,j) = i*j               
!             print*, "darray(",i,",",j,") = ", darray(i,j)           
!         end do      
!     end do      
    
!     deallocate (darray)  
! end program dyn_arr

! ------------
! Reshape
! ------------

! result = RESHAPE (source, shape [, pad] [, order])

! Ex.1: RESHAPE ((/3, 4, 5, 6, 7, 8/), (/2, 3/)) has the value
! [ 3  5  7 ]
! [ 4  6  8 ]

! Ex.2: RESHAPE ((/3, 4, 5, 6, 7, 8/), (/2, 4/), (/1, 1/), (/2, 1/)) has the value

! [ 3  4  5  6 ]
! [ 7  8  1  1 ]

! program arr
!     implicit none
!     integer :: AR1( 2, 5)
!     integer :: i, j
!     AR1 = reshape((/1,2,3,4,5,6/), shape=(/2,5/), pad=(/0,0/), order=(/2,1/))
!     do i=1,2
!         print *, AR1(i,:)
!     end do
! end program arr

! Change Fortran array order to C array order
program arr
    implicit none
    real :: F(5,3,8)
    real :: C(8,3,5)
    integer :: i

    C = reshape(F, (/8,3,5/), order=(/3, 2, 1/))

    do i=1,8
        print *, C(i,:,:)
    end do
end program arr
