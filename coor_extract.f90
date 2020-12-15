!***************************************************!
! Read XYX file
!***************************************************!

PROGRAM COOR_EXTRACT

IMPLICIT NONE
INTEGER :: i
REAL, ALLOCATABLE :: coor(:,:)
REAL :: coor_trans
INTEGER, PARAMETER :: in1=1, out1=2, N=3

!REAL, DEMENSION(200)  :: w,x,y,z

ALLOCATE(coor(N,4)) !N rows, 4 columns

!Extract coordinate from data file

OPEN(in1, FILE='cnt.data')
DO i=1,N
        READ (in1,*) coor(i,1), coor(i,2), coor(i,3), coor(i,4)
        END DO

OPEN (out1, FILE="coor.txt", ACTION="write", STATUS="replace")
DO i=1,N
        WRITE (out1,*) coor(i,1), coor(i,2), coor(i,3), coor(i,4)
        END DO

CLOSE (in1)
CLOSE (out1)

END PROGRAM COOR_EXTRACT
