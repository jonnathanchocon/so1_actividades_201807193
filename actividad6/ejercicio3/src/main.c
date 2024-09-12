#include <sys/types.h>
#include <sys/wait.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main()
{
    pid_t pid;

    pid = fork(); // En esta linea tenemos el proceso padre + hijo = 2
    if (pid == 0) // Proceso hijo
    {
        printf("Proceso principal crea proceso hijo: %d\n", getpid());
        pid_t pid2 = fork(); // En este punto se crea otro para el hijo, seria el nieto = 3
        if (pid2 == 0)
        {
            printf("Proceso hijo Crea proceso nieto: %d\n", getpid());
        }
    }
    else // Proceso padre
    {
        printf("Proceso principal pid: %d\n", getpid());
        wait(NULL);
    }
    pid_t pid3 = getpid();
    pid_t pid4 = fork(); // Se crea 3 mas: 1 para el principal, el hijo y el nieto = 6
    if (pid4 == 0)
        printf("Proceso pid: %d Crea nuevo proceso con pid: %d\n", pid3, getpid());

    wait(NULL);
    printf("Proceso con pid: %d finalizado\n", getpid());
    return 0;
}
