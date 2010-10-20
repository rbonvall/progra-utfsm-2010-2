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

    integer, parameter :: N = 4
    type(alumno), dimension(N) :: alumnos
    integer :: i

    print *, 'Ingrese los datos de los alumnos:'
    do i = 1, N
        read *, alumnos(i)
    end do

    print *
    print *, 'Los promedios finales son:'
    do i = 1, N
        print *, alumnos(i) % nombre, nint(sum(alumnos(i) % notas) / 3.0)
    end do

    print *
    print *, 'El promedio del certamen 1 fue', sum(alumnos(:) % notas(1)) / N

    read *
end program tabla_alumnos

