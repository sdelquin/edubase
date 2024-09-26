# Configuración de la máquina virtual

Esta sección explica cómo montar **la máquina virtual** con la que vamos a trabajar en clase.

[Descarga e instalación](#descarga-e-instalación)  
[Arranque y configuración](#arranque-y-configuración)  
[Clave de acceso](#clave-de-acceso)  
[Pasos posteriores](#pasos-posteriores)  
[Advertencias](#advertencias)

## Descarga e instalación

Abrimos una terminal **desde la máquina real**:

![Open terminal](./images/vm-setup/open-terminal.png)

Construimos la máquina virtual pegando y ejecutando (con <kbd>ENTER</kbd>) el siguiente comando en la terminal:

> 💡 Para copiar puedes usar el símbolo ⧉ que está a la derecha del comando. Para pegar en la terminal tendrás que usar la combinación de teclas <kbd>CTRL+SHIFT+V</kbd> (o botón derecho → pegar)

```console
bash <(curl -fsSL https://raw.githubusercontent.com/sdelquin/edubase/main/scripts/build-vm.sh)
```

> ⚠️ Este proceso puede durar varios minutos. ¡Paciencia!

Ajustamos los parámetros de la interfaz de red pegando y ejecutando (con <kbd>ENTER</kbd>) el siguiente comando en la terminal:

```console
bash <(curl -fsSL https://raw.githubusercontent.com/sdelquin/edubase/main/scripts/fix-network.sh)
```

> 💡 Nos pedirá el nombre de la máquina virtual. Si no la has modificado basta con pulsar <kdb>ENTER</kdb>.

## Arranque y configuración

Ahora abrimos VirtualBox:

![Open terminal](./images/vm-setup/open-virtualbox.png)

Debería aparecer **una nueva máquina virtual con el nombre del módulo**. Arrancamos esta máquina:

![Open vm](./images/vm-setup/open-vm.png)

En pocos segundos nos aparecerá la **ventana de login**:

![Login](./images/vm-setup/login-vm.png)

Accedemos al sistema con las siguientes credenciales:

- Usuario: `alu`
- Contraseña: `tranquilidad`

A continuación abrimos una terminal **desde la máquina virtual**:

![Open terminal vm](./images/vm-setup/open-terminal-vm.png)

Lanzamos el siguiente comando para fijar el nombre de máquina (_hostname_):

```console
curl -fsSL https://raw.githubusercontent.com/sdelquin/edubase/main/scripts/set-hostname.sh | bash
```

> ⚠️ Cuando nos lo solicite tendremos que poner la contraseña (ojo porque no se ve cuando la escribimos).

A continuación creamos las carpetas de trabajo en el HOME del usuario ejecutando la siguiente instrucción:

```console
curl -fsSL https://raw.githubusercontent.com/sdelquin/edubase/main/scripts/create-folders.sh | bash
```

## Clave de acceso

Por último **modificamos la contraseña** que está por defecto para el usuario `alu` poniendo otra distinta **QUE NO DEBEMOS OLVIDAR**.

Para ello ejecutamos (desde una terminal de la **máquina virtual**) el comando `passwd`:

![passwd](./images/vm-setup/passwd.png)

## Pasos posteriores

### A toda pantalla

La primera vez que entramos en la máquina virtual puede que no se vea ocupando completamente la pantalla. Esto lo resolvemos muy fácil:

![Pantalla completa](./images/vm-setup/full-screen.jpg)

### Comprobación de la configuración de red

Abre una terminal (en la máquina virtual) y lanza el siguiente comando para comprobar que tu IP se corresponde con la que debe:

```console
ip -br a | perl -nle 'print $1 if /(10.[^\/]+)/'
```

Ejemplos:

- Si estás en el **aula 103** y tu número de PC es el 7, el comando debería dar como salida: `10.103.7.20`
- Si estás en el **aula 109** y tu número de PC es el 4, el comando debería dar como salida: `10.109.4.20`

> 💡 Si la IP que saca el comando no es la que corresponda, avisa al profe.

## Advertencias

1. **NO MODIFIQUES EL NOMBRE DE LA MÁQUINA VIRTUAL**. Debe llamarse tal y como quedó después de la configuración inicial.
2. **NO MODIFIQUES LA CUENTA DE USUARIO** que se ha creado por defecto `alu`.
3. **NO INSTALES OTRA SHELL** que no sea la que viene por defecto `bash` ya que puede afectar a las configuraciones de distintas herramientas.
4. **CUANDO NOS LLEVAMOS LA MÁQUINA VIRTUAL A CASA** es muy probable que la configuración de red nos de problemas ya que no va a encontrar la misma interfaz de red que en el centro.

   **Es por ello que se recomienda ➡️ antes de arrancar la máquina virtual en el instituto ⬅️ lanzar el siguiente comando DESDE UNA TERMINAL DE LA MÁQUINA REAL**:

   ```console
   bash <(curl -fsSL https://raw.githubusercontent.com/sdelquin/edubase/main/scripts/fix-network.sh)
   ```

   > 💡 Nos pedirá el nombre de la máquina virtual. Si no la has modificado basta con pulsar <kdb>ENTER</kdb>.

5. **CUANDO CAMBIAMOS DE PUESTO EN EL AULA** debemos realizar dos acciones.

   **a) Desde una terminal de la MÁQUINA REAL ejecutamos este comando**:

   ```console
   bash <(curl -fsSL https://raw.githubusercontent.com/sdelquin/edubase/main/scripts/fix-network.sh)
   ```

   > 💡 Nos pedirá el nombre de la máquina virtual. Si no la has modificado basta con pulsar <kdb>ENTER</kdb>.

   **b) Desde una terminal de la MÁQUINA VIRTUAL ejecutamos este comando**:

   ```console
   curl -fsSL https://raw.githubusercontent.com/sdelquin/edubase/main/scripts/set-hostname.sh | bash
   ```
