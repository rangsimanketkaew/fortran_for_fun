!> file main2.f
program main
    use test_module, better_name => a
  
    ! new name use available
    print *, better_name
  
    ! old name is not available anymore
    !print *, a  <- ERROR
  
end program main
