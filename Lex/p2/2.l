%{
#include<stdio.h>
int id=0,com=0,oper=0;
%}
%%
\/.* {com++;}
"/*"[^"*/"]*"/" {com++;}
[\+\-\*\/] oper++;
= ;
[\t\n] ;
[0-9]+[a-zA-Z0-9_]* ;
[a-zA-Z_][a-zA-Z0-9_]* {id++;}
[!@#$%^&()}{|:"'~`\[\]]+[a-zA-Z0-9_]* ;
. ;
%%
int yywrap(){return 1;
fclose(yyin);}
void main()
{
yyin=fopen("input.txt","r");
yylex();
printf("no. of identifiers=%d\n",id);
printf("no. of comments=%d\n",com);
printf("no. of operators=%d\n",oper);
}
