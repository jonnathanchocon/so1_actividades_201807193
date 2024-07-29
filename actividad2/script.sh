#!/bin/bash

# 1. Leer la variable GITHUB_USER
#       Antes de jecutar, crear la variable GITHUB_USER con
#       export GITHUB_USER=user

usuario_github=$(echo $GITHUB_USER) # Leyento usuario y guardando en usuario_github

# 2. Consultar la URL https://api.github/com/users/ concatenango el valor de
#    la variable GITHUB_USER al final

path_github="https://api.github.com/users/${usuario_github}"
data=$(curl $path_github)

# 3. Imprimir el mensaje "Hola<github_user>. User ID: <id>. Cuenta fue creada el: <created_at>."
#    Los valores entre los signos <> deben de ser tomados del JSON consultado previamente
user_id=$(echo $data | grep -o '"id": [0-9]*' | grep -o '[0-9]*')
created_at=$(echo $data | grep -o '"created_at": "[^"]*' | grep -o '[^"]*$')

greeting="Hola $usuario_github. User ID: $user_id. Cuenta fue creada el: $created_at."
echo ""
echo "$greeting"

# 4. Crear un log file en /tmp/<fecha>/saludos.log con la salida del mensaje anterior.
#    Donde <fecha> corresponde a la fecha del dia de ejecucion del script
fecha=$(date +%d-%m-%Y)
    # Crear carpeta
mkdir -p /tmp/$fecha/
    # Escribir en el archivo saludos.log
echo "$greeting -> hora: $(date +%H:%M:%S)" >> /tmp/$fecha/saludos.log

# 5. Crear un cronjob para que el script se ejecute cada 5 minutos.
#       usando crontab -e
#            agregar:
#       */5 * * * * <path_script>/script.sh
#       guardar y salir
