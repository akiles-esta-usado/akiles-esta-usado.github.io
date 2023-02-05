---
title: Twilio MicroVisor
layout: post
date: \'2023-02-05 12:21:27 -0000\'
categories:
- embedded
- twilio
- microvisor
---

# Twilio Microvisor

En mi trabajo se realizará una presentación sobre el uso de la herramienta Microvisor de Twilio, un vistazo rápido por su sitio web muestra capacidades interesantes. Aquí resumiré lo que encuentre antes de la presentación. Al menos actualizaré un par de preguntas después.

Presentado en 2020, es una plataforma IoT para conectar dispositivos. Tiene componentes tanto para el lado del dispositivo, como para Cloud.

En la sección enfocada a la programación del dispositivo, se ofrece un SDK que permite la depuración remota y actualización Over-The-Air (OTA), todo siendo criptográficamente seguro.


Se menciona los MCUs STM32U5. Con procesadores ArmCortex M y TrustZone.

Microvisor otorga a los embebidos 3 capacidades básicas:

- Remote Debugging.
- Reliable OTA updates.
- Managed Security, criptografía.


En el video se presenta una máquina de trotar que ocupa firmware escrito en C y FreeRTOS. Microvisor le da capacidades de conectividad, depuración y actualización de código fuente.


## Preguntas


### Capacidades de control remoto

¿Existe dentro del SDK algo que permita hacer un interprete de comandos sencillos?


### Consumo Energético y carga computacional

¿Qué tanto afecta el uso de Microvisor al consumo energético y a los retrasos que puede provocar en aplicaciones de baja latencia?.


### Debugging OTA

El código en dispositivos desplegados se compila con optimizaciones.

¿Cómo podemos depurar código optimizado?


### Programación

Tenemos que ocupar algún IDE específico para trabajar?

Estamos ocupando una extensión de Visual Studio llamada PlatformIO, ha demostrado ser útil para mantener proyectos con distintas placas de desarrollo y arquitecturas.


### Dispositivos Específicos

Los planes de Twilio están ligados a hardware específico?

Tenemos unos modems de conectividad 3G/4G Sim7600, estos se pueden ocupar?

### Control

Si ocupamos el SDK Microvisor, tendremos que ocupar si o si los servicios cloud de Twilio, o podemos levantar instancias gestionadas por nosotros?

Podemos revisar y editar el código fuente del SDK?


## Microcontrolador STM32U5

[Link](https://www.st.com/en/microcontrollers-microprocessors/stm32u5-series.html)

Ultra-low-power MCUs Basados en ARM Cortex M33.

Viene con coprocesadores de encriptación AES, un modo de operación autónomo de bajo consumo, 2MB de flash y 786 KB de SRAM.


## Sitio Principal

- [Twilio IoT](https://www.twilio.com/es-mx/iot)
- [Microvisor]https://www.twilio.com/es-mx/iot/microvisor-iot-platform


Microvisor aún está en beta, y parece que si se requiere de dispositivos específicos... Revisar.


Da facilidades para usar distintos lenguajes de programación? por ejemplo, Python o Rust?

Se menciona coneción Wifi, Ethernet o Celular. Hay otras alternativas? NarrowBand IoT, Zigbee o LoRA.


## Twilio Global Infrastructure

Es un [pdf](https://twilio-cms-prod.s3.amazonaws.com/documents/Global-Infrastructure-Ebook.pdf) que explica la infraestructura y conectividad de Twilio. Es un libro de 2020, así que la cobertura debería haber incrementado.

Tiene componentes basados en AWS.

## Productos IoT con Twilio

[Aquí](https://www.twilio.com/docs/iot) se describen los productos y servicios ofrecidos.


Referencias:
- [Presentación introductoria](https://www.youtube.com/watch?v=2_d8Pm3ijK8)
