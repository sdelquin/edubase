# Carpetas de trabajo

Desde la **máquina virtual DE CLASE 🎓** abre una terminal y ejecuta el siguiente comando:

```console
curl -fsSL https://raw.githubusercontent.com/sdelquin/edubase/main/scripts/create-folders.sh | bash
```

Esto creará la estructura de carpetas con la que vamos a trabajar durante el curso en:

- `~/pro` si estás cursando el módulo de **Programación** de 1DAW.
- `~/dsw` si estás cursando el módulo de **Desarrollo web en entornos servidor** de 2DAW.

## Confirma los cambios

Para confirmar los cambios con `git` debes ejecutar los siguientes comandos:

```console
cd ~/pro  # cambia tu carpeta según corresponda
git add .
git commit -m "Creación de carpetas de trabajo"
git push
```
