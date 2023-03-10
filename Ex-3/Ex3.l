%%
[+]?[0-9]+ {printf("positive integer\n");}
[-]?[0-9]+ {printf("negative integer\n");}
.
%%
int yywrap()
{
return 1;
}
int main()
{
printf("positive and negative integer recognition\n");
yylex();
return 0;
}
