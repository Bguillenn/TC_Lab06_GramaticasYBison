%{
    #include <stdio.h>
    #include <stdlib.h>
    int yylex();
    int yyerror(char *s);
%}

%token BB
%token NL

%%
cadena: BB NL {printf("Reconocio la cadena"); 
                exit(0);}
;
%%

int yyerror(char *s){
    printf("%s\n", s);
    return 1;
}