# Cómo trabajar con GIT

Git es un sistema de control de versiones distribuido que permite a los desarrolladores rastrear cambios en el código fuente, colaborar de forma eficiente y gestionar múltiples versiones de un proyecto de manera local y segura

**Tanto desde clase como desde casa**, aquí tienes el procedimiento que debes seguir para trabajar de forma segura utilizando control de versiones `git`.

## Al empezar

Lo primero que **siempre debes hacer** al empezar a trabajar es **situarte en la carpeta correspondiente** (ej. `cd ~/pro`) y lanzar el siguiente comando:

```console
git pull
```

Con esto te "traerás" todos los cambios que hayas realizado.

## Al acabar

No olvides nunca asegurar tu trabajo. Para ello lanza los siguientes comandos:

```console
git add .
git commit -m "Mi trabajo de hoy"
```

> Sustituye `"Mi trabajo de hoy"` por un comentario explicativo de lo que has modificado en el repositorio. Este comando crea un «commit» que permite fijar los ficheros.

Por último sube los cambios al servidor GitHub con el siguiente comando:

```console
git push
```
