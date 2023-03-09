---
title: Seminario IELE 2023 - Avances en Tecnología y Diseño de Circuitos
layout: post
date: \'2023-02-27 12:51:03 -0000\'
categories:
- embedded
- microelectronica
---

Presentación organizada por la Universidad de los Andes y el departamento de Ingeniería Eléctrica y Electrónica. El presentador es Carlos Tokunaga, Principal Engineer de Intel y parte del Circuit Research Lab, entre otros logros.

El objetivo es presentar tecnologías y avances en circuitos integrados, y las oportunidades que existen para los eventos y cosas que se organizan.

La presetación se está grabando, se supone que será subida a Youtube algún día.


## Introducción

### Inteligencia Artificial

Se habla sobre la relación entre los modelos de inteligencia artififial y la cantidad de parámetros que estos tienen.

Si un modelo tiene un billón de parámetros, ¿Cuanta memoria va a necesitar un computador? Los modelos incrementan exponencialmente, el poder de cómputo también requiere de aquello.

Ejemplos: Aurora 2 ExaFLOPS. Supercomputadora con más de 54,000 Ponte Vecchio... No se que significa eso.


### Ley de Moore

Se muestra la misma gráfica aburrida sobre la ley de moore, que es una ley económica, etc.


### Avances en los Transistores

Al parecer, intel ya está hablando de la era de los Armstrong.
En 45 nm, se introduce el gate de metal en el transistor. Se da porque los efectos de canal corto eran muy grandes con el Polisilicio.

La transición a transistores de 3 dimensiones o FinFet, con el metal vertical y el canal cruzandolo, se da por la necesidad de incrementar la densidad de transistores en chip, el control del gate sobre el resto del transitor y porque la capa aislante de control de gate tenía un grosor de átomos, demasiado delgado y produciendo mucho leakage.

Estos transistores evolucionan a la tecnología actual: Intel 7. Luego vienen los RibonFets.


## Nuevos transistores

### RibbonFets

Una limitación del FinFet es que ciertas partes del canal no tienen buen control. En los RibbonFets, el gate cubre totalmente el canal. Gate All Around.

La gran ventaja es que la altura ya no es predeterminada como en FinFet, podemos controlar el tamaño del transistor.

### Monolithic-Stacked NP

Apilar los transistores N y P para reducir el uso de área.

Un inversor se construye con transistores N y P, lado a lado. Eso determina que tan denso es el bloque a diseñar.
Con esta nueva tecnología, se pueden tener los transistores N y P uno encima del otro, lo que permitiría duplicar el área efectiva. Esto ayuda el el campo de las memorias.


> Pregunta: La tecnología antes se definpia en nanómetros, esto se relacionaba a la dimensión del canal. Ahora como se hace?

En la industria, algunos han decidido cambiar esa métrica. Intel decidió llamar a las tecnologías por un número que ya no se relaciona con alguna dimensión del transistor.


### Integración de tecnologías

> Nota del editor: De aquí en adelante me perdí un poco, posiblemente no se entienda jeje.

Lo tradicional es unir con el package. Silicio y package.
El problema de esto es que al incrementar la complejidad del circuito se suelen agregar varios defectos al integrar.

Surge imib, tecnología que permite conectar pines muy densos entre chips con un sustrato. Silicio y capas de metal.

No hay un pitch muy fino actualmente.

Sapphire Rapids tiene 4 retículos, imib en la mitad.
Ponte Vecchio es para supercomputadores, Tiene 47 chips diferentes y 5 procesos diferentes de tecnologías.

Base Tile permite poner memoria para que los otros puedan accesar rápidamente. Lo que agrega tecnologías dentro del mismo package.


### Fault Isolation

Como se hace depuración del package?

Se están desarrollando tecnologías de testing. e-beam probing.


## Confiabilidad y Resiliencia

3 tipos de circuitos:

Caracterización de Soft-errors, defectos causados por los neutrinos. Se busca dar tolerancia a aquello.


Otro circuito: Inclusión de circuitos que detecten cuando se quiera atacar el chip con lasers. Es un proyecto de seguridad que se acaba de presentar.
Los algoritmos criptográficos suelen requerir de una clave. Con laser se puede conocer, bajo ciertas tecnologías, que valores hay en ciertos registros.

Para saber la llave secreta, se pueden inducir fallas (Fault injection).

Con el laser se puede vulnerar el Secure boot igualmente.

Para la solución, se propuso agegar cosas en el pipeline aritmético que detecten los errores. Además, incluir un circuito que detecte cuando se esté vulnerando los circuitos.


Luego muestra el entorno de experimentación con el que validaron sus investigaciones.


> En los últimos años, como se relaciona la sección del circuito encargada de depurar su funcionamiento?



La cantidad de infraestructura suele ligrarse a los defectos que tienen que encontrarse en largo volúmen. Tradeoff.





> Respecto a aquello de la detección de inyección de errores, ¿La operación bajo un entorno muy ruidoso en campo electromagnético no podría provocar un falso positivo?

Se habló del laser, la gente que ataca podría cambiar el reloj, etc.

La de la pregunta es otra fuente de ataque, los chips al funcionar también generan campos magnéticos. No pueden interferir en ciertas bandas, el ancho de banda electrómagnético que genera el reloj puede ocupar hasta el 20% de la potencia del chip.

Campo magnéticos se usan para hacer lo mismo que se hizo con el laser, también para hacer lo que se llama Side Channel detection. Escuchar los campos magnéticos y basado en eso, descubrir la clave secreta. También se puede usar la corriente del chip.


## Compute In Memory

> Nota de editor: No anoté muchos detalles.

Muchisimo interés actualmente principalmente por los avances en Machine Learning.

Muy popular porque en ML se requiere aplicar mucho cómputo a los datos. Sin embargo, la arquitectura Von Newmann resulta ser problemático para los algoritmos, cuellos de botella.

Uno de los diagramas muestra la transisicion entre cómputo en CPU, GPU/TPU, Near-Memory e In-Memory. Procesamiento en Cache también existe.

En esta área hay implementaciones análogas y digitales, siempre existe un tradeoff. Más procesamiento, más potencia, más eficiencia, 


## Code-a-Chip

Concurso de la IEEE SSCS.
Trata de incentivar el uso de herramientas de software para diseñar los circuitos, en vez de las herramientas tradicionales.

Generar circuitos que son reproducibles. Al publicar no se suelen compartir los esquemáticos, diagramas, etc.
Nadie tiene acceso a la tecnología como para obtener los mismos valores obtenidos.

Este consurso trata de hacer el acceso al diseño mucho más fácil de reproducir.




