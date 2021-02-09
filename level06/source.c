#include <stdio.h>

void clear_stdin()
{
}

void get_unum()
{
    // fflush();
    // scanf();
    // clear_stdin();
}

void prog_timeout()
{
}

void enable_timeout_cons()
{
}

int auth(char *login, unsigned int serial)
{
    int len;
    int tmp;
    int i = 0;

    login[strcspn(login, "\n")] = 0;
    len = strnlen(login, 32);
    if (len > 5)
    {
        if (ptrace(0, 0, 1, 0) == 0xffffffff)
        {
            puts("[32m.---------------------------.");
            puts("[31m| !! TAMPERING DETECTED !!  |");
            puts("[32m'---------------------------'");
            return (1);
        }
        tmp = login[3] ^ 4919 + 6221293;
        i = 0;
        while (i < len)
        {
            if (login[i] <= 31)
                return (1);
            i++;
        }
    }
    if (tmp == i)
    {
        return (0);
    }
    return (1);
}

int main(int ac, char **av)
{
    char login[32];
    unsigned int serial;

    puts("***********************************");
    puts("*\t\tlevel06\t\t  *");
    puts("***********************************");
    printf("-> Enter Login: ");
    fgets(login, 32, stdin);
    puts("***********************************");
    puts("***** NEW ACCOUNT DETECTED ********");
    puts("***********************************");
    printf("-> Enter Serial:");
    scanf("%u", &serial);
    if (auth(login, serial) == 0)
    {
        puts("Authenticated!");
        system("/bin/sh");
        return (0);
    }
    return (1);
}