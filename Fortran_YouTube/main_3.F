!> show using only
program main
    use test_module, only : a
  
    ! only a is loaded
    print *, a
  
    ! b is not loaded
    !print *, b  <- ERROR
  
end program main