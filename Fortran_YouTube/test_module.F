!> file test_module.f
module test_module
    implicit none
    private
    integer, public :: a=1
    integer, public, protected :: b=1
    integer, private :: c=1
end module test_module