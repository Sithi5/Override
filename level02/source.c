//stack 0x120 => 288oct

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
	FILE *file;
	char login[100];
	char passwd[100];
	char buffer[41];

	memset(buffer,0,);
	memset(login,0,);
	memset(passwd,0,);

	if ((file = fopen("/home/users/level03/.pass",'r')) != NULL)
	{
		fwrite("ERROR: failed to open password file\n",36,stderr);
		exit(1);
	}
	fread(buffer,41,1,file);
	if (41 != strcspn(buffer,"\n")
	{
		fwrite("ERROR: failed to read password file\n",36,stderr);
		fwrite("ERROR: failed to read password file\n",36,stderr);
		exit(1);
	}
	fclose(file);
	puts("===== [ Secure Access System v1.0 ] =====");
	puts("/***************************************\\");
	puts("| You must login to access this system. |");
	puts("\\**************************************/ ");
	printf("--[ Username: ");
	fgets(login,100,stdin);
	strcspn(login,"\n");
	printf("--[ Password: ");
	fgets(passwd,100,stdin);
	strcspn(passwd,"\n");
	puts("*****************************************");
	if strncmp(buffer,paswd,41) == 0)
	{
		printf("Greetings, %s!", login);
		system("/bin/sh");
	}
	else
	{
		printf(login);
		puts(" does not have access!");
		exit(1);
	}
}