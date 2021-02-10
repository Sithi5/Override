#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
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
char c = 255;
int t = 

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
char buffer[99] = "./backups/";
strncat(buffer, av[1], 99 - strlen(buffer) - 1);
//fd = open(av[1], O_CREAT | O_EXCL | O_WRONLY, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP);
fd = open(buffer, 0xc1, 0x1b0);
if (!fd)
{
    printf("ERROR: Failed to open %s%s\n","./backups/", av[1]);
    exit(1);
}
while ((c = fgetc(file)) != EOF)
    write(fd, c, 1);
log_wrapper("Finished back up ", backup);
fclose(backup);
close(fd);
}