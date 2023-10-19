%option noyywrap
%{
#include <stdio.h>
%}

%%
[0-9]+ {
    int decimal = atoi(yytext);
    int binary[32]; // Assuming 32-bit representation
    int i = 0;
    
    while (decimal > 0) {
        binary[i] = decimal % 2;
        decimal = decimal / 2;
        i++;
    }
    
    printf("Decimal: %s\nBinary: ", yytext);
    while (i > 0) {
        i--;
        printf("%d", binary[i]);
    }
    printf("\n");
}

. ; // Ignore other characters

%%

int main() {
    printf("Enter a decimal number: ");
    yylex();
    return 0;
}
