#!/bin/bash

namedpipe=pipechat

if [[ ! -p $namedpipe ]]; then
    mkfifo $namedpipe
fi

while true; do
    echo "Esperando respuesta..."
    echo "UsuarioA: $(cat $namedpipe)"
    echo -n "UsuarioB: "
    read entrada
    echo $entrada > $namedpipe
done
