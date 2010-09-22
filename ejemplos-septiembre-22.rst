Ejemplos de la clase del 22 de septiembre
=========================================

Escribir programas que hagan lo siguiente:

* indicar si el número ingresado por el usuario
  es primo o no;
* mostrar los números primos menores que 1000;
* mostrar los primeros 100 números primos.

Estos tres programas resultan muy fáciles de escribir
si suponemos que existe una función llamada ``es_primo``,
que recibe como parámetro un número entero
y entrega como resultado un valor lógico
que dice si el número es o no primo.

El primer programa queda así::

    integer :: n
    
    read *, n
    if (es_primo(n)) then
        print *, 'Es primo'
    else
        print *, 'No es primo'
    end if

Para el segundo programa,
hay que probar con todos los números menores que 1000,
y mostrarlos sólo si resultan ser primos::

    integer :: i

    do i = 1, 1000
        if (es_primo(i)) then
            print *, i
        end if
    end do

Para el tercer programa,
no podemos saber de antemano cuántas veces hay que hacer el ciclo
(hay que hacerlo hasta que hayamos llegado al centésimo primo),
por lo que hay que usar un ciclo ``do while`` y un contador::

    integer :: i, c

    c = 0
    i = 2
    do while (c < 100)
        if (es_primo(i)) then
            c = c + 1
            print *, i
        end if
        i = i + 1
    end do

La función ``es_primo`` es la misma para los tres programas.
La función debe recibir como parámetro un valor entero,
y entregar como resultado un valor lógico.

Como ejemplo de un programa completo,
el siguiente es el código
del tercer programa, incluyendo la función:

.. literalinclude:: programas/primeros-primos-fn.f95

Comentario al margen:
para que los números sean escritos hacia el lado en vez de hacia abajo,
hay que usar la sentencia ``print`` con el siguiente descriptor de formato::

    print '(i4,$)', i

``i4`` significa «imprimir un entero de cuatro caracteres de ancho»,
y el signo ``$`` significa «no agregar un salto de línea al final».

.. include:: disqus.rst

