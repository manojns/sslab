%{
#include<stdio.h>
#include<stdlib.h>
%}
%token number id nl
%left '+' '-'
%left '*' '/'
%%
stmt:exp nl {printf("valid exp\n");exit(0);}
;
exp:exp '+' exp
|exp '-' exp
|exp '*' exp
|exp '/' exp
|'('exp')'
|id
|number
;
%%
int yyerror(char *msg)
{
printf("invalid\n");
exit(0);
}
main()

{
printf("enter the exp\n");
yyparse();
}
