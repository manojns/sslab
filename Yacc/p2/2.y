%{
#include<stdio.h>
#include<stdlib.h>
%}
%token digit letter nl unscore
%%
stmt:variable nl {printf("valid identifer\n");exit(0);}
;
variable:letter alphanumeric
;
alphanumeric:letter alphanumeric
|digit alphanumeric
|unscore alphanumeric
|letter
|digit
|unscore
;
%%
int yyerror(char *msg)
{
printf("invalid\n");
exit(0);
}
main()
{
printf("enter the variable name\n");
yyparse();
}
