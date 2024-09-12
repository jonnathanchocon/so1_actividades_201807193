# Actividad 6

Usando el siguiente código como referencia, completar el programa
para que sea ejecutable y responder las siguientes preguntas

```c
pid_t pid;

pid = fork();
if (pid == 0) { /* child process */
    fork();
    thread_create( ... );
}
fork();
```

* **a) ¿Cuántos procesos únicos son creados?**

R. Se crean 6 procesos únicos

* **b) ¿Cuántos hilos únicos son creados?**

R. Se crean 6 hilos únicos
