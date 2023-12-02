# Instalación de git en Windows

Lo primero es descargar el [instalador de git](https://git-scm.com/download/win) desde su página oficial:

![Descargar instalador](./images/git-install-win/01-download-git-installer.png)

Puede que aparezca un mensaje de seguridad. Conservamos el archivo:

![Conservar archivo](./images/git-install-win/02-keep-installer.png)

Lo más habitual es que el fichero se haya guardado en la carpeta de _Descargas_. Lo buscamos en el explorador de archivos y hacemos doble clic sobre el archivo:

![Lanzar instalador](./images/git-install-win/03-launch-installer.png)

Si aparece una pantalla de seguridad podemos ejecutar con normalidad:

![Ejecutar con seguridad](./images/git-install-win/04-security-execute.png)

Dado que esta aplicación hace modificaciones a nivel de sistema operativo es bastante probable que tengamos que permitir cambios en el dispositivo:

![Cambios en el sistema](./images/git-install-win/05-make-changes.png)

Ahora sí que se nos abre el instalador y lo primero es aceptar la licencia [GNU General Public License, version 2](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html):

![Aceptar licencia](./images/git-install-win/06-accept-gpl.png)

Lo siguiente será la ubicación de la instalación. Dejamos el valor por defecto y continuamos:

![Ubicación instalación](./images/git-install-win/07-installer-location.png)

En la siguiente pantalla tendremos que seleccionar los componentes a instalar. Dejamos los valores por defecto y continuamos:

![Seleccionar componentes](./images/git-install-win/08-select-components.png)

A continuación debemos seleccionar el menú en el que se guardarán los accesos directos. Dejamos los valores por defecto y continuamos:

![Menu accesos directos](./images/git-install-win/09-program-shortcuts.png)

En la siguiente pantalla debemos seleccionar el editor por defecto para _git_. En este caso elegimos "Notepad" y continuamos:

![Editor para git](./images/git-install-win/10-git-editor.png)

Ahora debemos especificar cuál será la rama por defecto cuando creemos nuevos repositorios _git_ vacíos. En este caso **vamos a cambiar la opción** por defecto y continuamos:

![Rama por defecto](./images/git-install-win/11-default-branch.png)

A continuación nos pide indicar la gestión del `PATH`. Dejamos los valores por defecto y continuamos:

![Gestión de PATH](./images/git-install-win/12-path-management.png)

En la siguiente pantalla nos solicita elegir el ejecutable para _OpenSSH_. Dejamos los valores por defecto y continuamos:

![OpenSSH](./images/git-install-win/13-openssh.png)

Relacionado con lo anterior, también debemos especificar las librerías para comunicación SSL. Igualmente a lo anterior, aquí también dejamos los valores por defecto y continuamos:

![OpenSSL](images/git-install-win/14-openssl.png)

A continuación tendremos que especificar la manera de gestionar los saltos de línea en los archivos. Dejamos los valores por defecto y continuamos:

![Control de saltos de línea](images/git-install-win/15-line-endings-check.png)

En la siguiente pantalla hay que configurar el emulador de terminal para usar con _git_. Dejamos los valores por defecto y continuamos:

![Emulador de terminal](images/git-install-win/16-terminal-emulator.png)

A continuación hay que especificar el comportamiento por defecto de `git pull`. Dejamos los valores por defecto y continuamos:

![Comportamiento git pull](images/git-install-win/17-gitpull-behaviour.png)

En la siguiente pantalla nos preguntan por el sistema de gestión de credenciales para _git_. Dejamos los valores por defecto y continuamos:

![Gestión de credenciales](images/git-install-win/18-credentials-management.png)

En la configuración de las opciones adicionales también dejamos los valores por defecto y continuamos:

![Opciones adicionales](images/git-install-win/19-extra-options.png)

En la siguiente pantalla de opciones experimentales no seleccionamos nada. Dejamos los valores por defecto y continuamos:

![Opciones experimentales](images/git-install-win/20-experimental-options.png)

El proceso de instalación comenzará mostrando una barra de progreso con las herramientas que se están almacenando:

![Progreso de instalación](images/git-install-win/21-progress-installation.png)

Llegamos al final de la instalación. En esta pantalla desmarcamos las opciones y finalizamos:

![Finalización de instalación](images/git-install-win/22-finish-installation.png)

Para comprobar que tenemos `git` bien instalado, abrimos una ventana de "Símbolo del sistema":

![Abrir símbolo del sistema](images/git-install-win/23-open-msdos.png)

Y lanzamos el comando `git --version`:

![git version](images/git-install-win/24-git-version.png)

Si vemos una salida similiar (obviamente la versión puede cambiar) es que **la instalación ha sido exitosa**.
