%%
a.*(ab) {printf("Accepted\n");}
(ab) {printf("Accepted\n");}
end {return 0;}
.* {printf("Rejected\n");}
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();    
    return 0;
}