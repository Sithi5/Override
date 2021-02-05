
dat_wil
admin
********* ADMIN LOGIN PROMPT *********
Enter Username:
nope, incorrect username...
Enter Password:
nope, incorrect password...
//;*2$"$

char *a_user_name;

int verify_user_name(void){
	puts("verifying username....");
	return(strncmp(a_user_name, "dat_will", 7));
}

int verify_user_pass(char *str){
	return (strncmp(str, "admin", 5));
}

int main(void)
{

}