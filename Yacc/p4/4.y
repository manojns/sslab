%{
  #include<stdio.h>
  #include<stdlib.h>
%}
%token A B NL
%%
stmt : C D NL {printf("Valid\n"); exit(0); }
     ;
C : A C
  |A
  | ;

D : B D
  |B
  | ;
%%
int yyerror(char*msg){
    printf("Invalid\n");
    exit(0);
}
int main(){
    printf("Enter Expression : ");
    yyparse();
    return 0;
}
