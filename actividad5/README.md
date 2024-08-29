# Actividad 5

## Tipos de Kernel y sus diferencias

- **Kernel Monolítico**

Es un kernel de gran tamaño que puede gestionar todas las
tareas. Se encarga de la gestión de memoria y procesos, así
como de la comunicación entre los procesos y el soporte de
las diferentes funciones de los drivers y el hardware. Los
sistemas operativos que recurren al kernel monólitico son
Linux, OS X y Window.

- **Microkernel**

Los kernel que están diseñados con pequeños tamaños tienen una
clara función: evitar el colapso total del sistema en case de
un fallo. Para cumplir con todas las tareas como un kernel
monolítico cuenta con diferentes módulos. Es curioso, pero hasta
ahora solo el Mach de OS X es el único que utiliza el microkernel.

- **Kernel Híbrido**

Combinación entre el microkernel y el kernel monolítico. Nos
encontramos ante un kernel grande, pero compacto y que puede ser
modulado y otras partes del mismo kernel pueden cargarse de
manera dinámica. Es utilizado en Linux y OS X.

<table>
    <tr>
        <th>Kernel Monolítico</th>
        <th>Microkernel</th>
        <th>Kernel Híbrido</th>
    </tr>
    <tr>
        <td>Gran tamaño</td>
        <td>Pequeño tamaño</td>
        <td>Grande y compacto</td>
    </tr>
    <tr>
        <td>Gestiona todas las tareas</td>
        <td>Diferentes móduos gestionan diferentes tareas</td>
        <td>Puede ser modulado y otras partes se cargan de forma dinámica</td>
    </tr>
    <tr>
        <td>Linux, OS X y Windows</td>
        <td>Mach de OS X</td>
        <td>Linux y OS X</td>
    </tr>
</table>

## User vs Kernel Mode

<table>
    <tr>
        <th>Kernel Mode</th>
        <th>User Mode</th>
    </tr>
    <tr>
        <td align="justify">
            Ofrece acceso ilimitado a todo el hardware que se conecta
        </td>
        <td align="justify">
            Cuenta con acceso restringido al hardware
        </td>
    </tr>

</table>

## Interruptions vs traps

- **Interruption**

Una interrupción es generada por un **dispositivo de hardware**. Los
dispositivos USB, las tarjetas NIC y los teclados pueden causar
interrupciones. Las interrupciones son asincrónicas, por lo que pueden
ocurrir en cualquier momento.

- **Trap**

Una trampa es una interrupción sincrónica que se activa por una excepción
en un **proceso de usuario** para permitir que se ejecute una función. Una
trampa en un sistema operativo puede activarse por situaciones de excepción,
como un **acceso incorrecto a la memoria**, **una división por cero** o
**un punto de interrupción**.

<table>
    <tr>
        <th>Interruption</th>
        <th>Trap</th>
    </tr>
    <tr>
        <td align="justify">
            Generado por un dispositivo de hardware
        </td>
        <td align="justify">
            Se activa por una excepción en un proceso de usuario
        </td>
    </tr>
    <tr>
        <td align="justify">
            Es asíncrononico
        </td>
        <td align="justify">
            Es síncronico
        </td>
    </tr>

</table>
