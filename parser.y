%{
	int yyerror(char* s);
	int yylex();
	#include "stdio.h"
	#include "stdlib.h"
	#include "ctype.h"
	#include "string.h"
%}

%token WORD NOUN NUMBER VERB ADWORD PUNCTUATION PREPOSITION NL

%start begin_parse

%%

begin_parse: sentences NL {
	printf("Valid\n");
	return 0;
};

sentences : NOUN VERB NOUN PUNCTUATION | ADWORD NOUN ADWORD VERB ADWORD NOUN |  NOUN VERB PUNCTUATION | ;

%%

int yyerror(char *s){
	printf("invalid");
	return 1;
}

int main()
{
	printf("Enter the string : ");
	yyparse();
    return 0;
}

int yywrap()
{
	return 1;
}
