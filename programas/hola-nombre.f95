program hola_nombre
    implicit none
    character(len=15) :: nombre
    character(len=15) :: apellido
    character(len=31) :: nombre_completo

    print *, 'Cual es su nombre?'
    read '(A)', nombre
    print *, 'Hola ', trim(nombre), '!'

    print *, 'Tu nombre tiene', len_trim(nombre), 'letras'
    print *, 'Las dos primeras letras de tu nombre son ', nombre(1:2)

    print *, 'Cual es tu apellido?'
    read '(A)', apellido

    nombre_completo = trim(nombre) // ' ' // trim(apellido)
    print *, 'Tu nombre completo es "', trim(nombre_completo), '"'

end program hola_nombre
