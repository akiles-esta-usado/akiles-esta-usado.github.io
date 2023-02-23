---
title: Scanf Basics - Jacob Sorber
layout: post
date: \'2023-02-22 21:40:03 -0000\'
categories:
- embedded
- <CAT1>
---

Mi youtuber de C favorito, Jacob Sorber, explica el funcionamiento de esta intrincada función estándar, `scanf`. Este video se enfoca en principiantes, pero estoy seguro que todos podemos sacar algo interesante.

`scanf` es similar a `printf` en cuanto a que son abstracciones de escritura y lectura sobre pipes "stdin" y "stdout".

## Uso básico

~~~c
int main() {
  int x=7;
  printf("x = %d\n", x);
  
  printf("new x? ");
  scanf("%d", &x);  // format, address of variable.
  
  printf("x = %d\n", x);
}
~~~

Este ejemplo es el más básico, funcionalidad mínima de scanf para obtener un entero.

No se muestra que ocurre si el entero tiene un valor superior al que cabe en la variable.


## Captar un string

~~~c
printf("Whats your name? ");
char name[20];
scanf("%s", name);
printf("name = %s\n", name);
~~~

En este otro caso, el arreglo `name` no puede almacenar más de 20 caracteres incluyendo el término de string. `scanf` no ofrece una comprobación del largo de este si no se indica explicitamente.


## Problema 1: Largo del string

~~~
scanf("%19s", name);
printf("name = %s\n", name);
~~~

Es horrible el "hardcodeo" del largo del string, ante esto se recomienda el uso de `fgets` o similares.

## Problema 2: Persistencia de stdin

Otro problema de scanf: Puede ignorar el procesamiento de `stdin` si no se cumple el formato, dejandolo para siguientes instancias de `scanf` y rompiendo la lógica del programa.

Me llama la atención que `scanf` puede procesar datos en stdin sin sacarlos del buffer de recepción. Ya que terminan persistiendo hasta otras instancias de `scanf`.


## Manejo de errores básico

`scanf` retorna el número de cosas que "encuentra" y almacena en las variables.

~~~
int result;
char nextch;
do {
  printf("new x? ");
  result = scanf("%d%c", &x, &nextch);
  fflush(stdin)
} while (result == 0 || nextch != '\n');
~~~

Este código verifica 3 cosas:

1. Que se escriba algún entero en `x`.
2. Que no haya basura en lo escrito.
3. Que se remuevan los caractéres en `stdin`


El gran problema, es que hay que agregar demasiado código boilerplate para lograr una funcionalidad más o menos decente.
Hay otras formas de procesar datos de entrada, como `fgets`, `strtok`, `sscanf`.


## Conclusión personal

Me equivoqué de video, en realidad quería ver [este otro](https://www.youtube.com/watch?v=k0BIzHDBkwE) jeje.
Bueno, la conclusión es simple: Evitar usar `scanf`.

Volcar en un arreglo suficientemente grande y luego procesar sobre este. Para mi, las funciones `strstr` y `stdtol` y derivados son la solución a casi todo. Uno para encontrar el separador, el otro para obtener enteros.


Referencias:
- [El video](https://www.youtube.com/watch?v=xedk5KXg0VI)
