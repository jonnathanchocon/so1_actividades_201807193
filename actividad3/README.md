# Actividad 3

- **Script que se ejecutara como servicio**

[mi-servicio.sh](mi-servicio.sh)

<p>
    El script Imprime un saludo y la fecha infinitamente.
</p>

<br />

<p>
    Dar permisos de ejecución al archivo con el comando:
</p>

```
chmod 744 mi-servicio.sh
```

<br />

<p>
    Copiar el archivo mi-servicio.sh en /usr/local/bin/
    con el siguiente comando
</p>

```
cp mi-servicio.sh /usr/local/bin/

```

- **Archivo de configuracion del servicio**

[mi-servicio.service](mi-servicio.service)

<p>
    Coiar el Archivo de configuracion del servicio mi-servicio.service dentro de la carpeta
    /etc/systemd/system/ con el siguiente comando:
</p>

```
cp mi-servicio.service /etc/systemd/system/
```

- **Verificar el estado del servicio**

```
systemctl status mi-servicio
```

- **Iniciar el servicio**

```
systemctl start mi-servicio
```

- **Habilitar el servicio para que se inicie con el sistema**

```
systemctl enable mi-servicio
```

- **Ver los logs del servicio**

```
journalctl -f -u mi-servicio
```

