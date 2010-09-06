Arreglos
========
.. index:: arreglo

Un **arreglo** es un tipo de datos
que contiene varios elementos de un mismo tipo.

.. index:: índice

Cada elemento tiene asociado un **índice**,
y puede ser tratado como si fuera una variable.
La cantidad de elementos que tiene un arreglo es fija,
y no puede cambiar durante la ejecución del programa.

La sintaxis para declarar un arreglo es::

    tipo, dimension(tamaño) :: nombre

La sintaxis para referirse al elemento de índice ``i``
de un arreglo ``x`` es::

    x(i)

Por ejemplo,
el siguiente programa utiliza un arreglo
para guardar seis notas ingresadas por el usuario
y luego calcular el promedio:

.. literalinclude:: programas/promedio-arreglo-1.f95
   :linenos:

En este programa,
se ha declarado un arreglo de enteros de tamaño 6,
cuyos elementos están indexados desde el 1 hasta el 6.

El ejemplo podría perfectamente estar escrito
usando cinco variables ``a``, ``b``, ``c``, ``d``, ``e`` y ``f``
para guardar las notas.
La ventaja de usar arreglos es que se puede usar ciclos
para recorrer todos los elementos.
A continuación reescribiremos el ejemplo
para aprovechar esta ventaja.
Además, definiremos el número de notas como una constante:

.. literalinclude:: programas/promedio-arreglo-3.f95
   :linenos:

Otra ventaja de usar arreglos
es que el mismo programa puede ser utilizado
para conjuntos de datos de cualquier tamaño
sin requerir mayores modificaciones.
El programa para promediar cinco notas
es exactamente igual al que se usaría para promediar treinta notas.
Sólo basta con modificar el valor de la constante ``N``.

.. Como el número de elementos de un arreglo está fijo,
.. si queremos guardar un número arbitrario de elementos
.. debemos crear un arreglo lo suficientemente grande
.. y llevar la cuenta de cuántos elementos hemos asignado.
.. La siguiente versión de nuestro ejemplo
.. pide al usuario que ingrese un conjunto de notas,
.. y que indique el final de la secuencia ingresando el valor ``-1``:
.. 
.. .. literalinclude:: programas/promedio-secuencia.pas
..    :linenos:
.. 
.. La parte donde se calcula el promedio
.. es igual que en la versión anterior.
.. El cambio está en la parte de la entrada,
.. ya que hay que llevar la cuenta de cuántos datos se ha ingresado,
.. y además hay que tener cuidado de no pasarse en la capacidad del arreglo.
.. Si el usuario termina la secuencia con ``-1``,
.. hay que restar uno a la cantidad de elementos,
.. ya que este valor no debe ser considerado para el cálculo del promedio.
.. 
.. A continuación, otro ejemplo.
.. El siguiente programa
.. le pide al usuario que ingrese 10 números reales,
.. y a continuación los escribe en el orden inverso:
.. 
.. .. literalinclude:: programas/orden-inverso.pas
..    :linenos:
.. 
.. Generalmente, los índices son números enteros
.. que van desde uno hasta la capacidad del arreglo.
.. También es posible usar índices con otros rangos
.. (por ejemplo, partiendo desde cero),
.. e incluso usando otros tipos de datos ordinales.
.. El siguiente ejemplo muestra
.. algunas declaraciones válidas e inválidas de arreglos::
.. 
..     var
..         {válidas}
..         a: Array[False..True] of Real;
..         b: Array['a'..'z'] of Real;
..         c: Array[0..9] of Real;
..         d: Array[100..200] of Real;
.. 
..         {inválidas}
..         e: Array[1000..1] of Real;
..         f: Array[2,3,5,7,11] of Real;
..         g: Array[0.5..9.5] of Real;
.. 
.. Arreglos multidimensionales
.. ---------------------------
.. .. index:: arreglo multidimensional
.. 
.. Un **arreglo multidimensional** es un arreglo
.. cuyos elementos tienen más de un índice.
.. 
.. El caso más simple son los arreglos bidimensionales,
.. que tienen dos índices, y son útiles para representar datos con formato tabular,
.. como tablas y matrices.
.. 
.. Tanto en la declaración como en el uso del arreglo,
.. los índices se ponen separados por comas.
.. 
.. Por ejemplo,
.. el siguiente código permite ingresar datos numéricos
.. en una tabla de 5 × 3 y luego mostrarla por pantalla::
.. 
..     program LlenarTabla;
..     const
..         nroFilas = 5;
..         nroColumnas = 3;
..     var
..         tabla: Array[1..nroFilas, 1..nroColumnas] of Integer;
..         i, j: Integer;
..     begin
..         {llenar}
..         for i := 1 to nroFilas do
..             for j := 1 to nroColumnas do
..                 Read(tabla[i, j]);
.. 
..         {mostrar}
..         for i := 1 to nroFilas do
..         begin
..             for j := 1 to nroColumnas do
..                 Write(tabla[i, j], ' ');
..             WriteLn;
..         end;
..     end.

Inicialización de arreglos
--------------------------
.. index:: inicialización de arreglos

A veces un programa necesita tener un arreglo
cuyos valores están dados de antemano,
por lo que no corresponde que los ingrese el usuario.

Para estos casos,
es posible inicializar el arreglo durante la declaración.
Por ejemplo,
la siguiente declaracion
inicializa un arreglo con la cantidad de días
que tienen los meses del año:

.. literalinclude:: programas/dias-mes.f95

.. include:: disqus.rst

