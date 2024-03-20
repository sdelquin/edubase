# Instalación de Python en Linux

A continuación se muestra un **tutorial para instalar la última versión estable de Python sobre Linux.**

---

Actualizamos los repositorios:

```console
sudo apt update
```

Instalamos los prerrequisitos:

```console
sudo apt install -y build-essential zlib1g-dev libncurses5-dev \
libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev \
libsqlite3-dev wget libbz2-dev pkg-config curl
```

Obtenemos la última versión estable de Python:

```console
PYTHON_LATEST=`curl -s https://www.python.org/downloads/ | gunzip -c | grep latest | perl -nle 'print $1 if /(\d+\.\d+\.\d+)/'`
```

Construimos la URL de descarga para Linux:

```console
PYTHON_DOWNLOAD=https://www.python.org/ftp/python/$PYTHON_LATEST/Python-$PYTHON_LATEST.tgz
```

Descargamos y descomprimimos esta versión en una carpeta temporal:

```console
curl -L $PYTHON_DOWNLOAD | tar xvz -C /tmp && cd /tmp/Python-$PYTHON_LATEST
```

Configuramos la instalación:

```console
./configure --enable-optimizations
```

Compilamos el intérprete:

```console
make -j `nproc`
```

> 💡 Esto puede tardar un cierto tiempo. ¡Paciencia!

Ejecutamos la instalación, respetando la versión por defecto de Python que hay en el sistema:

```console
sudo make altinstall
```

> 💡 No te preocupes por un posible warning del estilo: "Running pip as the 'root' user can result in broken permissions..."

Sacamos la versión mayor del Python instalado:

```console
PYTHON_MAJOR=`echo $PYTHON_LATEST | perl -nle 'print $1 if /(\d+\.\d+)/'`
```

Hacemos que esta nueva versión de Python sea la versión por defecto en el sistema:

```console
sudo update-alternatives --install /usr/bin/python python /usr/local/bin/python$PYTHON_MAJOR 10
```

Ahora podemos comprobar que la nueva versión quedó correctamente configurada:

```console
cd $HOME && python --version
```

## Instalación de paquetes

Lo primero es asegurarnos de tener la última versión del instalador de paquetes:

```console
python -m pip install -U pip
```

A continuación instalamos algunos paquetes soporte:

- [iPython](https://ipython.org/): consola interactiva "vitaminada" para Python.
- [wheel](https://github.com/pypa/wheel): paquete soporte para instalar otros paquetes.
- [cowsay](https://github.com/VaasuDevanS/cowsay-python): la vaca feliz.

```console
pip install ipython wheel cowsay
```

## La vaca feliz

Si todo ha ido bien, podrás ver a la vaca feliz 🐮:

```console
python -c 'import cowsay; cowsay.cow("Genial")'
```

⬇️ ⬇️️ ⬇️

```console
  ______
| Genial |
  ======
      \
       \
         ^__^
         (oo)\_______
         (__)\       )\/\
             ||----w |
             ||     ||

```
