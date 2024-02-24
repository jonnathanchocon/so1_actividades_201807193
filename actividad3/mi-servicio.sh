#!/bin/bash

# Ciclo infinito
while true; do
    fecha=$(date +%d/%m/%y-%H:%M:%S)
    echo "Hola desde el servicio: $fecha"
    sleep 1
done
