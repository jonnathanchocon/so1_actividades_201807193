#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

void *funcionHilo(void *arg)
{
    printf("Ejecutando funcionHilo\n");
    pthread_exit(0);
}

int main(void)
{
    printf("PID Principal: %d\n", getpid());
    pid_t pid;
    pid = fork();
    if (pid == 0) { /* child process */
        fork();
        pthread_t tid; /* the thread identifier */
        pthread_create(&tid, NULL, funcionHilo, NULL);
        printf("thread id: %lu\n", tid);
        pthread_join(tid, NULL);
    } else {
        printf("PID padre: %d\n", getpid());
    }
    fork();
    printf("PID: %d\n", getpid());
    return 0;
}
