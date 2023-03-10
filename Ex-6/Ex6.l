/* Decalration */
%{
	int upper = 0;
	int lower = 0;
%}

/* Rules */
%%
[A-Z] {printf("Upper case.\n"); upper++;}
[a-z] {printf("Lower case.\n"); lower++;}
[0-9] {return 0;}
. {printf("Wrong Input\n");}
%%

/* User code section */
int yywrap()
{
	return 1;
}

/* MAIN */
int main(int argc, char **argv)
{
	yylex();
	printf("Number of upper case: %d ", upper);
	printf("Number of lower case: %d ", lower);
	return 0;
}
