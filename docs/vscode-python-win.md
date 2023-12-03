# Configuración de VSCode para Python en Windows

Antes de nada abrimos un "Símbolo del sistema":

![Símbolo del sistema](images/vscode-python-win/01-open-msdos.png)

Para instalar las extensiones necesarias, ejecutamos el siguiente comando (pulsar <kbd>Enter</kbd> al final):

```console
code --install-extension charliermarsh.ruff && ^
code --install-extension ms-python.isort && ^
code --install-extension ms-python.mypy-type-checker
```

> 💡 No te preocupes si ves algún _warning_ en la salida del comando.

Ahora vamos a copiar la configuración base. Para ello ejecutamos el siguiente comando:

```console
curl -L https://raw.githubusercontent.com/sdelquin/edubase/main/docs/files/settings.json -o %APPDATA%\Code\User\settings.json
```

A continuación descargamos la configuración del formateador ejecutando el siguiente comando:

```console
curl -L https://raw.githubusercontent.com/sdelquin/edubase/main/docs/files/.ruff.toml -o %USERPROFILE%\.ruff.toml
```

Y por último descargamos la configuración del comprobador de tipos ejecutando el siguiente comando:

```console
curl -L https://raw.githubusercontent.com/sdelquin/edubase/main/docs/files/.mypy.ini -o %USERPROFILE%\.mypy.ini
```

> ⚠️ Si no te funciona el comando `curl` puedes seguir [esta guía de instalación](https://help.clouding.io/hc/en-us/articles/7813911710748-Install-CURL-on-Windows).
