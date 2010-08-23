program convertir_real_a_entero
   print *, 'Truncamiento:'
   print *,  10.3, '->', int( 10.3)
   print *,  10.5, '->', int( 10.5)
   print *,  10.7, '->', int( 10.7)
   print *, -10.3, '->', int(-10.3)
   print *, -10.5, '->', int(-10.5)
   print *, -10.7, '->', int(-10.7)

   print *, 'Hacia abajo:'
   print *,  10.3, '->', floor( 10.3)
   print *,  10.5, '->', floor( 10.5)
   print *,  10.7, '->', floor( 10.7)
   print *, -10.3, '->', floor(-10.3)
   print *, -10.5, '->', floor(-10.5)
   print *, -10.7, '->', floor(-10.7)

   print *, 'Hacia arriba:'
   print *,  10.3, '->', ceiling( 10.3)
   print *,  10.5, '->', ceiling( 10.5)
   print *,  10.7, '->', ceiling( 10.7)
   print *, -10.3, '->', ceiling(-10.3)
   print *, -10.5, '->', ceiling(-10.5)
   print *, -10.7, '->', ceiling(-10.7)

   print *, 'Mas cercano:'
   print *,  10.3, '->', nint( 10.3)
   print *,  10.5, '->', nint( 10.5)
   print *,  10.7, '->', nint( 10.7)
   print *, -10.3, '->', nint(-10.3)
   print *, -10.5, '->', nint(-10.5)
   print *, -10.7, '->', nint(-10.7)
end program convertir_real_a_entero
