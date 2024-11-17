# Cómo trabajar con GIT

**Tanto desde clase como de casa**, aquí tienes el procedimiento que debes seguir para trabajar de forma segura utilizando control de versiones `git`.

## Al empezar

Lo primero que **siempre debes hacer** al empezar a trabajar es situarte en la carpeta correspondiente y lanzar el siguiente comando:

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
