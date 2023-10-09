---
title: Jekyll - Brief and suffered tutorial
layout: post
date: \'2023-03-07 23:03:20 -0000\'
categories:
- embedded
- tutorial
---

Es solo una leida a Jekyll, la verdad es que no es tan obvio como pensé en un principio y tendré que definir algunos conceptos y operaciones aquí. Ojalá sirvan a la comunidad.

## Post vs Página

Hay una gran diferencia entre los posts y las páginas

Una página sirve para contenido en si, no basado en fechas o agrupación de contenido.

Mientras que un post es ....


## Diferencias de ubicación

Las páginas se agregan como archivos HTML o MD en el directorio raís del proyecto. Se recomienda que las páginas "about", "index" y "contact" se ubiquen aquí. Los posts existen dentro del directorio `./_posts` con la fecha indicada al principio del nombre del archivo en formato `YYYY-MM-DD-title.md` además de siempre contener un "front matter" al inicio. ¿Pueden tener guión bajo '_' en el título?


Las páginas pueden agruparse en subdirectorios. De todas maneras, cuando el sitio se construya, el contenido que se mostrará terminará en `.\_site` aunque hay un detalle según se indique en el "front matter".


Al parecer, siempre hay que ubicar los posts dentro del directorio `./_posts`


## Diferencias de contenido

Los posts siempre tienen que contener el "front matter" que tiene la información básica, como la fecha, el layout, título, etc. Mientras que en las páginas eso no es obligatorio, aunque si podría llegar a restringir el contenido que pueden ofrecer, como categorías o que se yo. Permalinks.


## Qué son los excerpts?

Según san google, significa "extracto".



Referencias:
- 
