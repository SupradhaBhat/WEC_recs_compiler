%{
	int yyerror(char* s);
	int yylex();
	#include "stdio.h"
	#include "stdlib.h"
	#include "ctype.h"
	#include "string.h"

%}
%token WORD NOUN NUMBER VERB ADWORD PUNCTUATION PREPOSITION SPACE

%start begin_parse

%%

begin_parse: sentences ;

sentences : type1 | type2 ;
type1 : NOUN VERB NOUN PUNCTUATION SPACE | ;
type2 : ADWORD NOUN ADWORD VERB ADWORD NOUN SPACE | ; 

%%

int yyerror(char *s){
	printf("invalid ");
	return 1;
}
int main()
{
	printf("Enter the string : ");
	yyparse();
    return 1;
}

int yywrap()
{
	return 1;
}
