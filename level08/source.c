#include <stdio.h>
#include <unistd.h>
// LOG: %s
// Usage: %s filename
// ./backups/.log
// ERROR: Failed to open %s
// Starting back up:
// ./backups/
// ERROR: Failed to open %s%s
// Finished back up

void log_wrapper(FILE *file, char *str, char *str2)
{
    char buff[272];

    strcpy(buff, str);
    snprintf(&buff[strlen(buff)], 254 - strlen(buff), str2);
    buff[strcspn(buff, "\n")] = 0;
    fprintf(file, "LOG: %s\n", buff);
    return;
}

int main(int ac,char **av)
{
FILE *backup;
FILE *file;
int fd;

if (ac <= 2)
{
	printf("Usage: %s filename\n");
}
backup = fopen("./backups/.log","w");
if(!backup)
{
	printf("ERROR: Failed to open %s\n");
	exit(1);
}
log_wrapper("Starting back up: ",backup);
file = fopen(av[1],"r");
if (!file)
{
	printf("ERROR: Failed to open %s\n");
	exit(1);
}
strncat();
fd = open(av[1],,);
if (!fd)
{
printf("ERROR: Failed to open %s%s\n","./backups/", av[1]);
exit(1);
}
write(fd,1,);
fgets(file);
log_wrapper("Finished back up ",backup);
fclose(backup);
close(fd);
}