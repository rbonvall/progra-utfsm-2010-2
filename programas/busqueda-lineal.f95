program busqueda_lineal
    implicit none
    integer, parameter :: N = 40
    integer, dimension(N) :: a = &
        (/65, 27,  7, 21, 59, -9, 25, 24, 59, 57, &
          43, 53,  0, 50,  3, 30, 29, 15, 20, 31, &
          24, 47, -1,  1, 44, -6, 24, 14, 26, 41, &
          73, 35, 65, 45, 36, 66, 19, 17, 15, 38/)
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

