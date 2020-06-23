%{
    #include "sintactico.tab.h"
    int yyparse();
%}
VAR_NOM [a-zA-Z][0-9a-zA-Z_\-]+
STRING  \".*\"
CHAR    \'.\'
INT     [0-9]+
DOUBLE  {INT}(,[0-9]+)?

%%
{VAR_NOM}   {return (VAR_NOM);} 
({STRING}|{CHAR}|{INT}|{DOUBLE}) {return (VAR_CONTENT);}
\;           {return (PC);}
\=           {return (IGUAL);}
[\n]        {return (SL);}
.           {printf("No se reconoce!\n");}
%%

int yywrap(){ return 0;};

void main(){
    printf("Asignacion de valor de una variable\n");
    yyparse();
    yylex();
}
