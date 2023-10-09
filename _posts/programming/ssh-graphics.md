# Gráficos sobre SSH

ssh -X es el comando que habilita el Forwarding de X11.

La explicación es:

- Se ejecuta una aplicación gráfica en el servidor remoto.
- La interacción se hace con dispositivos de entrada y salida locales.

## Modelo Cliente-Servidor


**X Server**:

- Gestiona el acceso al display y dispositivos de entrada como monitores, ratón.
- Corre en la máquina del usuario, un notebook por ejemplo.


**X Client**:

- Es el programa que uno quiero ocupar.
- Gestiona los datos gráficos y los actualiza.
- Se conecta al servidor X para comunicarse con sus dispositivos IO.
- Corre en el servidor remoto.

La complejidad del uso del protocolo aparece cuando agregamos la seguridad de SSH.

## Display

Es un conjunto de dispositivos que envían y reciben datos gráficos. Al menos considera una pantalla, teclado y mouse. Considerar que "pantalla" se refiere más a un canvas virtual sobre el que escribir, no un monitor.

La variable $DISPLAY determina a cual Xdisplay conectarse.

Formato: `hostname:display_number.screen_number`.

Un programa (XClient) se conecta según el valor de $DISPLAY. Luego el servidor es quién acepta la conexión.

### Algunas reglas:

- `display_number` es obligatorio, los valores por defecto para el resto son `hostname=device_name/unix` y `screen_number=0`.

`:0` y `unix:0` se expanden a `device_name/unix:0.0`.

- Sockets unix o tcp asociados a un display se derivan como sigue:

`hostname:N` a `localhost:6000+N`.

`hostname/unix:N` a `/tmp/.X11-unix/XN`.


## Seguridad

La manera predominante de controlar el acceso al display es con la cookie `MIT-MAGIC-COOKIE-1`, que funciona como sigue:

- Un X Client (Programa en server remoto) provee una cookie de 32 bits en texto plano asociada a un display.
- Si el servidor X (notebook) reconoce la cookie del display, le da acceso al cliente según el conjunto de permisos de la cookie.

Los permisos no son muy específicos, se dividen solo en 2 categorías:

- **Trusted**, que da acceso libre a los recursos del display.
- **Untrusted**, restringe permisos, como el dominio sobre una ventana, o el clipboard


`xauth` permite crear y generar cookies en el servidor. Se guardan en el archivo apuntado por `$XAUTHORITY` o por defecto en `~/.Xauthority`.

Si no hay cookie, el programa puede solicitar conexión sin cookie, y el servidor la aceptará. **Problema**: Es el programa que tiene que asegurar su autenticidad y autenticación.


`xhost` es otro sistema de control de acceso que ayuda a prevenir X clients no confiables.


## Operación de X11 Forwarding

La conexión entre Xclient y Xserver ocurre sobre un tunel ssh.




## Referencias

- [Fuente](https://goteleport.com/blog/x11-forwarding/)
