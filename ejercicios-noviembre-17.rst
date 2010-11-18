Ejercicios de la clase del 17 de noviembre
==========================================

.. index:: archivo temporal

Para algunos de los problemas vistos en esta clase
hay que usar **archivos temporales**.

.. index:: unlink, rename

Las dos subrutinas que hay que conocer para usar archivos temporales son:

* **unlink**, para eliminar archivos::

     call unlink('archivo.dat')
     
* **rename**, para renombrar archivos::

     call rename('temp.dat', 'archivo.dat')

Donantes
--------
Una institución de beneficiencia
tiene un registro de las personas que han hecho donaciones
en un archivo de registros llamado ``donantes.dat``.
El registro ``donante`` está definido de la siguiente manera::

    type :: donante
        integer :: rut
        character(len=20) :: nombre
        integer :: monto
    end type donante

El archivo está ordenado por rut
de menor a mayor.
Para simplificar,
vamos a suponer que los ruts tienen cinco dígitos,
y no incluyen el dígito después de la raya.

Por ejemplo,
el contenido del archivo
puede ser el siguiente:

    ====== ==================== =====
    Rut    Nombre               Monto
    ====== ==================== =====
    15274  Fulana de Tal          200
    15891  Jean Dupont            150
    16443  Erika Mustermann       400
    16504  Perico Los Palotes      80
    17004  Jan Kowalski           200
    ====== ==================== =====

Los problemas son los siguientes.

1. Escribir un programa que cree el archivo
   con los datos de la tabla.

   La solución del problema es la siguiente:

   .. literalinclude:: programas/archivo-ordenado-crear.f95

2. Escribir un programa que muestra los datos del archivo.

   La solución del problema es la siguiente:

   .. literalinclude:: programas/archivo-ordenado-mostrar.f95

3. Escribir un programa que pida al usuario ingresar un rut,
   y muestre como salida el monto donado por esa persona.

   La solución del problema es la siguiente:

   .. literalinclude:: programas/archivo-ordenado-buscar.f95

4. Escribir un programa que pida al usuario ingresar un rut,
   y elimine del archivo al donante con ese rut.

   Este problema requiere el uso de un archivo temporal.
   La solución consiste en leer cada registro del archivo original,
   y copiarlo al archivo temporal sólo si el rut no coincide
   con el ingresado.

   El programa completo es el siguiente:

   .. literalinclude:: programas/archivo-ordenado-eliminar.f95

5. Escribir un programa que pida al usuario
   ingresar los datos de un donante,
   y los agregue al archivo.

   La dificultad de este ejercicio es
   insertar el nuevo registro en la posición correcta
   para que el archivo siga estando ordenado.
   Si no existiera esta restricción,
   bastaría con agregarlo al final del archivo.

   Este programa también necesita un archivo temporal.
   El algoritmo es el siguiente:

   * copiar donantes al archivo temporal,
     y detenerse al encontrar un rut mayor que el del nuevo registro;
   * escribir el nuevo donante;
   * escribir el donante que quedó pendiente del primer paso;
   * copiar el resto de los donantes.

   En el tercer paso es importante verificar
   que efectivamente hay un registro pendiente.
   El ciclo inicial podría haber terminado
   porque la lectura llegó al final del archivo,
   y no porque encontró un rut mayor al nuevo.
   Esto ocurre cuando la posición en que corresponde ingresar el nuevo registro
   es al final del archivo.

   El programa completo es:

   .. literalinclude:: programas/archivo-ordenado-agregar.f95

.. include:: disqus.rst

