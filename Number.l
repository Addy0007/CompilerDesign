%{
#include <stdio.h>
%}

%%
[1-9][0-9]{9} {
    printf("Phone number: %s\n", yytext);
}

. ; // Ignore other characters

%%
int yywrap(){}
int main() {
    yylex();
    return 0;
}
