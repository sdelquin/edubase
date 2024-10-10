![Pypas Logo](images/pypas/pypas-logo.svg)

## Introducción

**pypas** es la herramienta que utilizaremos en clase para realizar ejercicios.

## Instalación

En la máquina virtual que utilizamos en clase ya deberías de tener pypas instalado. Pero siempre es bueno actualizar a la última versión:

```console
pypas upgrade
```

## Autenticación

Para autenticarte → **utiliza el token que has recibido por correo** donde pone `el-token-que-has-recibido`.

En una terminal escribe lo siguiente:

```console
pypas auth el-token-que-has-recibido
```

¡Enhorabuena! Ya estás inscrito en el contexto correspondiente y puedes empezar a utilizar la herramienta: **"Aprende Python comiendo pipas"**.

## Trabajar en un ejercicio

**Cuando llegues** al primer ejercicio de `pypas` verás que tiene un nombre. Supongamos que el nombre es `matraka`.

Para trabajar en este ejercicio:

1. Abre una terminal.
2. Utiliza `cd` para navegar hasta la carpeta de trabajo correspondiente.
3. `pypas get matraka`
4. `cd matraka`
5. `e` _(esto debería abrir Visual Studio Code)_
6. Abre el fichero `main.py` y busca la línea `# TODO`. Ahí debes empezar a escribir tu código.
7. Prueba tu solución con: `pypas test`

❯ El resto funcionalidades de `pypas` las puedes consultar en su [documentación](https://pypas.es).
