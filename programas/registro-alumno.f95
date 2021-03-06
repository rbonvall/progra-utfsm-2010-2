program registro_alumno
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

    type(alumno) :: a, b

    a%nombre = 'Perico'
    a%apellido = 'Los Palotes'
    a%nacimiento%dia = 4
    a%nacimiento%mes = 12
    a%nacimiento%anno = 1990
    a%notas(1) = 97
    a%notas(2) = 20
    a%notas(3) = 55

    b = alumno('Fulanita', 'De Tal', fecha(12, 10, 1991), (/50, 12, 95/))

    print *, a
    print *, b
end program registro_alumno
