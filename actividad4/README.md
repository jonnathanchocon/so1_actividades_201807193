# Actividad 4

## Script que se ejecutara como servicio

[script-saludar.sh](./script-saludar.sh)

- **Copiar 'script-saludar.sh' en /usr/local/bin**

```
cp script-saludar.sh /usr/local/bin
```

## Archivo de configurarion del servicio

[servicio-saludar.service](./servicio-saludar.service)

- **Copiar 'servicio-saludar.service en /etc/systemd/system'**

```
cp servicio-saludar.service /etc/systemd/system
```

## Configuracion del servicio

- **Verificar el estado del servicio**

```
systemctl status servicio-saludar.service
```

- **Iniciar el servicio**

```
systemctl start servicio-saludar.service
```

- **Detener el servicio**

```
systemctl stop servicio-saludar.service
```

- **Habilitar el servicio al iniciar el sistema**

```
systemctl enable servicio-saludar.service
```

- **No habilitar el servicio al iniciar el sistema**

```
systemctl disable servicio-saludar.service
```

- **Ver logs del servicio**

```
journalctl -f -u servicio-saludar.service
# -f : Follow journal
# -u : Show logs from the specified unit
```
