#!/bin/bash

# Configuraciones iniciales
set -o errexit  # Si encuentra un error el script se detiene
set -o nounset  # Variables indefinidas se tratan como error
set -o pipefail # Si una parte de pipe falla, entonces falla todo el pipe

# Leer la variable GITHUB_USER

    # Antes crear la variable GITHUB_USER con
    # export GITHUB_USER=user

usuario_github='jonn'
usuario_github=$(echo $GITHUB_USER) # Leyendo usuario y guardando en usuario_github
echo -e "usuario_github=${usuario_github}"

# Consultar la URL https://api.github/com/users/ concatenango el valor de
# la variable GITHUB_USER al final
ruta_github="https://api.github.com/users/${usuario_github}"
echo -e "Ruta github concatenada = $ruta_github"

# Imprimir el mensaje: "Hola <github_user>". User ID: <id>. Cuenta fue creada
# el : <created_at>." Los valores enre los signos <> son tomados del JSON
# consultado previamente.

# Crear un log file en /tmp/<fecha>/saludos.log con la salida del mensaje anterior.
# Donde <fecha> corresponde a la fecha del dia de ejecucion del script.

# Crear un cronjob para que el script se ejecute cada 5 minutos
