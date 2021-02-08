#include <stdio.h>

int auth(char *login, unsigned int i)
{
	int len;

	login[strcspn(login, "\n")] = 0;
	len = strnlen(login, 32);
	if (len > 5)
	{
		if (ptrace(0, 0, 1, 0) == 0xffffffff)
		{
			puts("");
			puts("");
			puts("");
			return(1);
		}
		login[3 ^ 4919]

	}
	return(1);
}

int main(int ac, char **av)
{
	char login[32];
	unsigned int i;

	puts("***********************************");
	puts("*\t\tlevel06\t\t  *");
	puts("***********************************");
	printf("-> Enter Login: ");
	fgets(login, 32, stdin);
	puts("***********************************");
	puts("***** NEW ACCOUNT DETECTED ********");
	puts("***********************************");
	printf("-> Enter Serial:");
	scanf("%u", &i);
	if (auth(login, i) == 0)
	{
		puts("Authenticated!");
		system("/bin/sh");
		return(0);
	}
	return(1);
}