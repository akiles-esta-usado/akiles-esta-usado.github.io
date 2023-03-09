---
title: Revisión de video de ADC de Jacob Sorber
layout: post
date: \'2023-02-27 00:15:23 -0000\'
categories:
- embedded
- Jacob Sorber
---

Es un problema usual al medir con microcontroladores.


El contexto del problema es un experimento con paneles solares. Se mide el voltaje de salida del panel mientras un objeto obstruye la luz.

La señal obtenida es muy diferente a la señal esperada, y esto se relaciona con el suministro de energía.

Se está usando el Arduino tanto para obstruir la luz con un servomotor como para medir los datos del panel. Es una cantidad considerable de estrés sobre el sistema de gestión de potencia de la placa Arduino.

Los ADCs miden en referencia a un voltaje, en este caso es el voltaje de suministro de Arduino. Si este baja, entonces la salida del ADC podría bajar.

El asunto es evitar sobrecargar el suministro de potencia al momento de realizar mediciones con ADCs, esto igual depende de como opere el dispositivo en cuestión, pero la regla general es esa.


Existe un video dedicado a ADCs.


Referencias:
- [Video](https://www.youtube.com/watch?v=QMYBumkV7yY)
