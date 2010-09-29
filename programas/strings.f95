program ejemplos_strings
    implicit none
    character(len=10) :: nombre
    character(len=10) :: apellido
    character(len=21) :: nombre_completo

    print *, 'Ingrese su nombre'
    read '(A)', nombre

    print *, 'Hola ', trim(nombre), '!'

    if (nombre /= 'Perico') then
        print *, 'Tu no te llamas Perico!'
    end if

    print *, 'Tu nombre tiene', len_trim(nombre), 'letras'
    
    print *, 'Las dos primeras letras de tu nombre son ', nombre(1:2)

    print *, 'Ingrese su apellido'
    read '(A)', apellido

    nombre_completo = trim(nombre) // ' ' // trim(apellido)

    print *, 'Tu nombre completo es "', trim(nombre_completo), '"'

    
end program ejemplos_strings
