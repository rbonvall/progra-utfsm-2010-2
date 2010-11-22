Diferencias entre Force y Silverfrost
=====================================

Los ejemplos que vemos en clases están todos probados usando Force.
En el entorno que se usa en el laboratorio
(editor Plato y compilador Silverfrost)
hay un par de diferencias importantes:

1. Silverfrost no tiene las subrutinas ``rename`` y ``unlink``.
   Usted puede crearlas pegando este código al final de su programa::

    contains
        subroutine rename(old, new)
            character(len=*) :: old, new
            call system('rename ' // old // ' ' // new)    
        end subroutine rename

        subroutine unlink(name)
            character(len=*) :: name
            call system('del ' // name)
        end subroutine unlink

2. Las sentencias de entrada y salida no llevan coma antes de los datos::

     write (10, *), x    ! Force
     write (10, *) x     ! Silverfrost
