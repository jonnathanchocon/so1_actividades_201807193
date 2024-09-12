#include <sys/wait.h>
#include <stdio.h>
#include <unistd.h>
#include <time.h>

int main()
{
    pid_t pid = fork();
    if (pid == 0)
    {
        printf("Se creo proceso zombie con pid: %d\n", getpid());
    }
    else if (pid > 0)
    {
        printf("Proceso Padre pid: %d\n", getpid());
        sleep(60);
    }

    time_t t = time(NULL);
    struct tm tm = *localtime(&t);
    printf("Finaliza el proceso pid: %d Hora: %02d:%02d:%02d\n",
           getpid(), tm.tm_hour, tm.tm_min, tm.tm_sec);
    return 0;
}
