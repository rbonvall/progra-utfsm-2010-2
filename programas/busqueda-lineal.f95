program busqueda_lineal
    implicit none
    integer, parameter :: N = 40
    integer, dimension(N) :: a = &
        (/-9, -6, -1,  0,  1,  3,  7, 14, 15, 15, &
          17, 19, 20, 21, 24, 24, 24, 25, 26, 27, &
          29, 30, 31, 35, 36, 38, 41, 43, 44, 45, &
          47, 50, 53, 57, 59, 59, 65, 65, 66, 73/)
    integer :: i
    logical :: encontrado
    integer :: valor

    print *, '¿Qué valor quiere buscar?'
    read *, valor

    encontrado = .FALSE.
    do i = 1, N
        if (a(i) == valor) then
            encontrado = .TRUE.
            exit
        end if
    end do

    if (encontrado) then
        print *, valor, 'está en la posición ', i
    else
        print *, valor, 'no está en el arreglo'
    end if

end program busqueda_lineal

