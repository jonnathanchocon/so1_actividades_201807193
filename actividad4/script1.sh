#!/bin/bash

namedpipe=pipechat

if [[ ! -p $namedpipe ]]; then
    mkfifo $namedpipe
fi

while true; do
    echo -n "UsuarioA: "
    read entrada
    echo $entrada > $namedpipe
    echo "Esperando respuesta..."
    echo "UsuarioB: $(cat $namedpipe)"
done
