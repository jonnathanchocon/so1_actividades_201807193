#!/bin/bash

# Configuraciones iniciales
set -o errexit  # Si encuentra un error el script se detiene
set -o nounset  # Variables indefinidas se tratan como error
set -o pipefail # Si una parte de pipe falla, entonces falla todo el pipe

# 1. Leer la variable GITHUB_USER

    # Antes crear la variable GITHUB_USER con
    # export GITHUB_USER=user

usuario_github=$(echo $GITHUB_USER) # Leyendo usuario y guardando en usuario_github
echo -e "usuario_github=${usuario_github}"

# 2. Consultar la URL https://api.github/com/users/ concatenango el valor de
#    la variable GITHUB_USER al final

ruta_github="https://api.github.com/users/${usuario_github}"
data=$(curl ${ruta_github})
clear

# 3. Imprimir el mensaje: "Hola <github_user>". User ID: <id>. Cuenta fue creada
#    el : <created_at>." Los valores enre los signos <> son tomados del JSON
#    consultado previamente.
id_usuario=$(echo "${data}" | grep -o '"id": [0-9]*' | grep -o '[0-9]*')
created_at=$(echo "${data}" | grep -o '"created_at": "[^"]*' | grep -o '[^"]*$')

saludo="Hola ${usuario_github}. User ID: ${id_usuario}. Cuenta fue creada el: ${created_at}."
echo "${saludo}"

# 4. Crear un log file en /tmp/<fecha>/saludos.log con la salida del mensaje anterior.
#    Donde <fecha> corresponde a la fecha del dia de ejecucion del script.

    # Obtener la fedha y guardarlo en una variable
fecha=$(date +%d-%m-%Y-%H-%M)
    # Crear Carpeta
mkdir /tmp/${fecha}/
    # Escribir en el archivo saludos.log
echo ${saludo} > /tmp/${fecha}/saludos.log

# Crear un cronjob para que el script se ejecute cada 5 minutos
