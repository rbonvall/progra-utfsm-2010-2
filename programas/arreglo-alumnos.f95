program tabla_alumnos
    implicit none

    type :: fecha
        integer :: dia
        integer :: mes
        integer :: anno
    end type fecha

    type :: alumno
        character(len=20)     :: nombre
        character(len=20)     :: apellido
        type(fecha)           :: nacimiento
        integer, dimension(3) :: notas
    end type alumno

    integer :: i
    integer, parameter :: N = 4
    type(alumno), dimension(N) :: alumnos

    print *, 'Ingrese datos alumnos'
    do i = 1, N
        read *, alumnos(i)
    end do

    print *, 'Los promedios son:'
    do i = 1, N
        print *, trim(alumnos(i)%nombre), trim(alumnos(i)%apellido), &
                 sum(alumnos(i)%notas) / 3
    end do

end program tabla_alumnos
