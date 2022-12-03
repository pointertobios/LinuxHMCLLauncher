#include <unistd.h>
#include <stdio.h>

void main()
{
    if(fork())
        return;
    setsid();
    if(fork())
        return;
    printf("linux hmcl launcher launching HMCL...\n");
    freopen("~/.__hmcl.log", "w", stdout);
    freopen("~/.__hmcl.log", "w", stderr);
    execl("/bin/java", "java", "-jar", "/opt/hmcl/HMCL.jar", NULL);
}
