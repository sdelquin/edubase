# Sincronización de la carpeta de trabajo

✨ El objetivo de esta guía es indicar los pasos necesarios para poder **sincronizar la carpeta de trabajo** que usamos en el equipo de clase con tu equipo de casa.

Esta guía se basa en sincronizar la carpeta `pro` de la ruta base de usuario (`$HOME` en Linux y `%USERPROFILE%` en Windows) pero se puede aplicar exactamente igual si la carpeta fuera otra cualquiera.

## Tabla de contenidos

[Syncthing en clase](#-syncthing-en-clase)  
[Syncthing en casa](#-syncthing-en-casa)  
[Vinculando clase desde casa](#vinculando-clase-desde-casa)  
[Vinculando casa desde clase](#vinculando-casa-desde-clase)  
[Sincronizar en el día a día](#sincronizar-en-el-día-a-día)  
[Ficheros de configuración](#ficheros-de-configuración)

## 🎓 Syncthing en clase

### Instalación de Syncthing

[Syncthing](https://syncthing.net/) es un servicio de sincronización de ficheros.

**→ En la máquina virtual de clase ya está instalado.**

### Configuración de Syncthing

Abrimos una terminal y lanzamos este comando:

```console
syncthing --no-default-folder
```

Veremos que aparecen muchos mensajes en la terminal y a continuación se nos abrirá una ventana en el navegador con la dirección http://127.0.0.1:8384 y con una pantalla de administración (_dashboard_) similar a esta, en la que tendremos que hacer estas tres cosas:

1. Cambiar el idioma a "Spanish".
2. Pulsar en "De acuerdo" porque no necesitamos contraseña para este equipo.
3. Pulsar en la identificación del equipo.

![Pantalla de inicio](images/sync-working-folder/school/01-starting-screen.png)

En la pantalla de identificación del equipo debemos **apuntar el identificador del equipo de clase y no perderlo**:

![Identificador del equipo](images/sync-working-folder/school/02-host-identification.png)

Cerramos esta pantalla y volvemos al _dashboard_ donde pulsaremos el botón para agregar una nueva carpeta:

![Agregar carpeta](images/sync-working-folder/school/03-add-folder.png)

En la siguiente pantalla indicamos que queremos compartir la carpeta con identificador `pro` y que se encuentra en la ruta `~/pro`. Luego pulsamos el botón de "Guardar":

![Carpeta añadida](images/sync-working-folder/school/04-added-folder.png)

Con todo esto, la pantalla de administración nos debería quedar algo así:

![Fin de fase1](images/sync-working-folder/school/05-finish-phase1.png)

Podemos cerrar el navegador (o la pestaña de Syncthing) y en la terminal pulsar la combinación de teclas <kbd>Ctrl-C</kbd> para detener el servicio:

![Parar servicio](images/sync-working-folder/school/06-stop-service.png)

## 🏠 Syncthing en casa

> 💡 Esta sección presupone un sistema operativo 🪟 Windows en la máquina de casa.

### Instalación de Syncthing

Lo primero será descargar la herramienta desde su página web. Para ello nos vamos a esta dirección https://syncthing.net/downloads/ y descargamos la versión para Windows:

![Descargar syncthing](images/sync-working-folder/home/01-download-syncthing.png)

Lo más probable es que el archivo se haya descargado en la carpeta _Descargas_. Lo buscamos en un explorador de archivos y hacemos doble clic para abrir el archivo comprimido:

![Encontrar syncthing](images/sync-working-folder/home/02-locate-syncthing-downloads.png)

Ahora pulsamos con **botón derecho** sobre el archivo y le damos a "Copiar":

![Copiar syncthing](images/sync-working-folder/home/03-copy-syncthing-folder.png)

A continuación debemos ir en en explorador de archivos a la carpeta `C:\Archivos de programa` y pegar la carpeta copiada de _Syncthing_:

![Pegar syncthing](images/sync-working-folder/home/04-paste-syncthing-programfiles.png)

Ahora vamos a renombrar la carpeta y llamarla `Syncthing`:

![Renombrar carpeta](images/sync-working-folder/home/05-rename-syncthing-folder.png)

Por último pulsamos con botón derecho sobre la propia carpeta `Syncthing` para copiar su ruta completa:

![Copiar ruta de acceso](images/sync-working-folder/home/06-copy-syncthing-path.png)

Ahora es el momento de agregar esta ruta al `PATH` del sistema para lo cual pulsamos la tecla <kbd>Win+R</kbd> y escribimos `SystemPropertiesAdvanced`:

![Abrir propiedades avanzadas](images/sync-working-folder/home/07-open-advanced-properties.png)

En la siguiente ventana pulsamos en "Variables de entorno":

![Variables de entorno](images/sync-working-folder/home/08-env-vars.png)

Ahora debemos seleccionar la variable del sistema `Path` y editar sus valores:

![Editar Path](images/sync-working-folder/home/09-edit-system-path.png)

En la ventana que se nos abre debemos añadir una nueva entrada con la ruta que tenemos copiada, que en teoría debería ser `C:\Program Files\Syncthing`:

![Nueva entrada path](images/sync-working-folder/home/10-new-entry-path.png)

A continuación pulsamos en **Aceptar** en las **dos ventanas anteriores que teníamos abiertas**.

✨ ¡Ya tenemos instalado _Syncthing_ en nuestro sistema operativo!

### Configuración de Syncthing

Abrimos un símbolo del sistema y lanzamos este comando:

```console
syncthing --no-default-folder
```

Esto hará que se abra nuestro navegador en la dirección http://127.0.0.1:8384. Lo primero es un mensaje de envío anónimo de informes de uso. Puedes pulsar "No":

![Notificación de informes](images/sync-working-folder/home/11-report-notification.png)

Ahora sí veremos el _dashboard_ habitual donde tendremos que hacer estas tres cosas:

1. Cambiar el idioma a "Spanish".
2. Pulsar en "De acuerdo" porque no necesitamos contraseña para este equipo.
3. Pulsar en la identificación del equipo.

![Pantalla de inicio](images/sync-working-folder/home/12-starting-screen.png)

En la pantalla de identificación del equipo debemos apuntar el identificador del equipo de casa y no perderlo:

![Identificador del equipo](images/sync-working-folder/home/13-host-identification.png)

Cerramos esta pantalla y volvemos a la pantalla de inicio donde pulsaremos para agregar una nueva carpeta:

![Agregar carpeta](images/sync-working-folder/home/14-add-folder.png)

En la siguiente pantalla indicamos que queremos compartir la carpeta con identificador `pro` y que se encuentra en la ruta `~/pro`:

![Carpeta añadida](images/sync-working-folder/home/15-added-folder.png)

Con todo esto, la pantalla de administración nos debería quedar algo así:

![Fin de fase 2](images/sync-working-folder/home/16-finish-phase2.png)

## Vinculando clase desde casa

Tendremos que **añadir un dispositivo que será el equipo de clase**. Para ello pusamos en "Añadir un dispositivo":

![Añadir dispositivo](images/sync-working-folder/home/17-add-device.png)

En la siguiente ventana indicamos el identificador del equipo de clase y escribimos como `clase` como nombre del dispositivo. Después pulsamos en la pestaña "Compartiendo":

![Añadir dispositivo - General](images/sync-working-folder/home/18-add-device-general.png)

En la pestaña "Compartiendo" habilitamos la carpeta `pro` y pulsamos "Guardar":

![Añadir dispositivo- Carpeta](images/sync-working-folder/home/19-add-device-folder.png)

Con todo esto el _dashboard_ de _Syncthing_ debería quedar algo así:

![Dashboard](images/sync-working-folder/home/20-syncthing-dashboard.png)

Podemos observar que el dispositivo `clase` aparece "Desconectado". Para conectarlo debemos realizar las mismas operaciones que en casa. Lo vemos en la próxima sección.

> 💡 Podemos cerrar el navegador (o la pestaña de Syncthing) y en la terminal pulsar la combinación de teclas <kbd>Ctrl-C</kbd> para detener el servicio.

## Vinculando casa desde clase

**Cuando volvamos al equipo de clase** tendremos que lanzar el servicio _Syncthing_ para vincular el equipo de casa.

Para ello lo primero será abrir una terminal y ejecutar el comando:

```console
syncthing
```

De nuevo se nos abrirá el navegador en la dirección http://127.0.0.1:8384 con el _dashboard_ y tendremos que pulsar en "Añadir un dispositivo":

![Añadir dispositivo](images/sync-working-folder/school/07-add-device.png)

En esta pantalla tendremos que añadir el ID del dispositivo de casa e indicar la etiqueta `casa`. Luego pulsamos en la pestaña "Compartiendo":

![Añadir dispositivo - General](images/sync-working-folder/school/08-add-device-general.png)

En la pestaña "Compartiendo" habilitamos la carpeta `pro` y pulsamos "Guardar":

![Añadir dispositivo- Carpeta](images/sync-working-folder/school/09-add-device-folder.png)

Con todo esto el _dashboard_ de _Syncthing_ debería quedar algo así:

![Dashboard](images/sync-working-folder/school/10-syncthing-dashboard.png)

> 💡 Podemos cerrar el navegador (o la pestaña de Syncthing) y en la terminal pulsar la combinación de teclas <kbd>Ctrl-C</kbd> para detener el servicio.

## Sincronizar en el día a día

Una vez que hemos realizado todos los pasos anteriores de configuración ya podemos empezar a sincronizar de manera "habitual".

Tanto en clase como en casa el procedimiento para sincronizar sería el siguiente:

1. Abrir una terminal (Linux) o Símbolo del sistema (Windows).
2. Lanzar el comando:

```console
syncthing --no-browser
```

3. Esperar unos segundos a que se sincronicen los cambios de la carpeta.
4. 🚨 **Dejar este servicio funcionando en una pestaña** 🚨
5. Abrir otra pestaña de terminal (si se necesita) para seguir trabajando.

→ Todo lo que tengamos en la carpeta `pro` se sincronizará de manera inmediata entre clase y casa.

> 💡 Podemos detener el servicio Syncthing en la terminal pulsando la combinación de teclas <kbd>Ctrl-C</kbd>

## Ficheros de configuración

Los ficheros de configuración de _Syncthing_ se encuentran en las siguientes ubicaciones:

| Linux                          | Windows                    |
| ------------------------------ | -------------------------- |
| `$HOME/.local/state/syncthing` | `%LOCALAPPDATA%\Syncthing` |
