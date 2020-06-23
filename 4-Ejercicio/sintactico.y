%{
    #include <stdio.h>
    #include <stdlib.h>
    int yylex();
    int yyerror(char *s);
%}

%token VAR_NOM
%token VAR_CONTENT
%token PC
%token IGUAL
%token SL

%%

A: VAR_NOM IGUAL VAR_CONTENT PC SL  {printf("Reconocido!\n");
exit(0);}
;
%%

int yyerror(char *s){
    printf("%s\n",s);
    return 0;
}