%{
#include<stdio.h>
%}
%token NUM nl
%left '+' '-'
%left '*' '/'
%%
expr:e nl {printf("\nResult: %d\n",$$);return;}
e:e'+'e {$$=$1+$3;}|
    e'-'e {$$=$1-$3;}|
    e'*'e {$$=$1*$3;}|
    e'/'e {$$=$1/$3;}|
    '('e')' {$$=$2;}|
    NUM {$$=$1;};
%%
void main()
{
printf("enter an arithmetic expression:");
yyparse();
}
void yyerror()
{
printf("\n invalid expression\n");
}
