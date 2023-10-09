# Ngspice Control

Ngspice es muy complicado a veces, ofreciendo una interfaz de usuario con varios tipos de variables, varias formas de modificarlas y una muy confusa forma de accederlas. En este documento busco sintetizar todo el sufrimiento que he pasado para que otros no lo tengan que pasar. Lo anterior, dicho sea de paso, referido a los bloques de control.


## Variables de entorno interesantes

`$inputdir` refiere a un directorio.


## Simulaciones en bloque de control

Los comandos de análisis, ej `.tran`, que se anotan en el netlist pueden ser agregados al interior de los bloques de control, esto tiene como ventajas:

- Realizar múltiples Simulaciones con distintos parámetros.
- Realizar distintas simulaciones.

La instrucción `reset` limpia los datos intemedios de un circuito y re-interpreta el archivo de entrada. Borra el efecto de `set` y `alter` previos. Se requiere luego de un `alterparam`.

## Acceso a Variables

Creo que esto es lo más confuso.

- `$output`: output es una variable y su valor puede ser usado en **comandos** utilizando esta notación.
- `$$`: Variable que contiene el id del proceso.
- `$<`: Se lee una línea de entrada
- `$&word`: Ocurre que `word` es un vector, y se ocupa su valor numérico.
- `$foo[low-high]`: `foo` es una lista, esta notación refiere a un rango de elementos entre `low` y `high`.
- `$foo[len-0]`: Esto invierte los valores de la lista `foo`
- `$?foo`: Evalúa si la variables está o no definida
- `$#foo`: Retorna:
  - El número de elementos de una lista
  - 1 si es un número o string
  - 0 si es variable booleana

Sobre los vectores, todo dato ngspice es un vector.
Cada uno tiene un tipo que rige como opera y se combina.

Se generan, usualmente, en simulaciones `tran` o `dc`.

## Iterar sobre una simulación

~~~
.control
  let vccc = 1.2    ; Vector unitario de valor 1.2
  
  repeat 5
    alter Vcc $&vccc      ; Modifica el dispositivo vcc, cambiando su voltaje
    
    dc vin 0 2 0.01       ; Analisis
    
    let vccc = vccc + 0.2 ; Actualiza el valor
  end
  
  * PLOT: Output Voltages
  plot dc1.v(out) dc2.v(out) dc3.v(out) dc4.v(out) dc5.v(out)
  
  * PLOT: Outut voltage derivative
  plot deriv(dc1.v(out)) deriv(dc2.v(out)) deriv(dc3.v(out)) deriv(dc4.v(out)) deriv(dc5.v(out)) ylabel 'Inverter gain V / V' xlabel 'vsweep V'
  
  * PLOT: Current from Vcc
  plot dc1.I(vcc) dc2.I(vcc) dc3.I(vcc) dc4.I(vcc) dc5.I(vcc) ylabel 'Inverter current consumption'
.endc
~~~


## Acceso a .params desde el bloque de control




- https://ngspice.sourceforge.io/ngspice-control-language-tutorial.html
