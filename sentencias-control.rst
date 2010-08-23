Sentencias de control en Fortran
================================
.. index:: sentencia de control

Además de las sentencias simples,
que son ejecutadas en secuencia,
existen **sentencias de control**
que permiten modificar el flujo del programa
introduciendo ciclos y condicionales.

Una secuencia de control
incluye otra sentencia dentro de sí.
Por ejemplo, una sentencia condicional
incluye la sentencia que puede o no ejecutarse
dependiendo de una condición.

.. index:: indentación

Al escribir las sentencias que van dentro de una sentencia de control,
se acostumbra a comenzar el renglón varias columnas más adelante.
Esto se llama **indentación**,
y es crucial para entender programas complejos.
Para indentar, lo típico es usar cuatro espacios.
Todos los ejemplos en esta sección están debidamente indentados.

Condicional if-then
-------------------
.. index:: if-then

..  .. image:: _static/imagenes/if.png
       :alt: (Diagrama de flujo if-then)
       :align: right

La sentencia **if-then**
(en español: «si-entonces»)
ejecuta instrucciones
sólo si se cumple una condición.
Si la condición es falsa,
no se hace nada.

La sintaxis es la siguiente::

    if (condición) then
        ! qué hacer cuando la condición es verdadera
    end if

Por ejemplo,
el siguente programa felicita a alguien
que aprobó la asignatura:

.. literalinclude:: programas/aprobado.f95

Condicional if-then-else
------------------------
.. index:: if-then-else

.. .. image:: _static/imagenes/if-else.png
      :alt: (Diagrama de flujo if-then-else)
      :align: right

La sentencia **if-then-else**
(«si-entonces-o-si-no»)
decide entre dos secuencias de instrucciones a ejecutar
dependiendo si una condición es verdadera o falsa.
La sintaxis es la siguiente::

    if (condición) then
        ! qué hacer cuando la condición es verdadera
    else
        ! qué hacer cuando la condición es falsa
    end if

Por ejemplo,
el siguiente programa recibe como entrada un año
e indica si es bisiesto_ o no:

.. literalinclude:: programas/bisiesto.f95

.. _bisiesto: http://es.wikipedia.org/wiki/Año_bisiesto

Condicional select-case
-----------------------
.. index:: select-case

La sentencia **select-case**
(«seleccionar-caso»)
decide qué instrucciones ejecutar
dependiendo del valor de una expresión.
Es una manera abreviada
de escribir varios **ifs** uno después del otro.

La sintaxis es la siguiente::

    select case (expresión)
        case (valor1)
            ! qué hacer cuando expresión == valor1
        case (valor2)
            ! qué hacer cuando expresión == valor2
        ...
        case default
            ! qué hacer cuando no se cumplió
            ! ninguno de los caso anteriores
    end select

Por ejemplo,
el siguiente programa
recibe un número entero como entrada
e indica si es par o impar:

.. literalinclude:: programas/par.f95

En un mismo caso es posible poner
varios valores separados por comas.
Por ejemplo,
el siguiente programa recibe como entrada un caracter,
y lo clasifica como vocal, consonante, dígito o símbolo:

.. literalinclude:: programas/clasifica-letras.f95

Ciclo do
--------
(Por escribir)

Ciclo do-while
--------------
(Por escribir)

.. include:: disqus.rst

