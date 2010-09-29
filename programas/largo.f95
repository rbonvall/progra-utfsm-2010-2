program relleno
    implicit none
    character(len=20) :: s
    s = 'paralelepipedo'
    print *, len_trim('')       ! la salida es 0
    print *, len_trim('perro')  ! la salida es 5
    print *, len_trim(s)        ! la salida es 14           
end program relleno
