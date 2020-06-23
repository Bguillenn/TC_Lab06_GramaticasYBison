%{
    #include "sintactico.tab.h"
    int yyparse();
%}

%%
bb {return (BB);}
[\n] {return (NL);}
.+   {printf("Caracter no reconocido");}
%%

int yywrap(){}

void main(){
    printf("Solo reconoce bb\n");
    yyparse();
    yylex();
}