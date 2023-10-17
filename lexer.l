%{
	#include <stdio.h>
	#include <string.h>
	#include "parser.tab.h"
%}

words              	[a-zA-Z0-9]+
Nouns              	[A-Z][A-Za-z]*
Numbers             [0-9]+
Verb                {words}*{Numbers}{words}*
Adwords             [a-z]*   
punctuations        [.?!]
prepositions        [@]{words}

%%
\n 	{ return NL; }
" " { };
{Numbers}       { printf("It is a Number"); return NUMBER;}
{Nouns}		    { printf("It is a Noun"); return NOUN;}
{Verb}          { printf("It is a Verb"); return VERB;}
{Adwords}       { printf("It is a Adword"); return ADWORD;}
{punctuations}  { printf("It is a punctuation"); return PUNCTUATION;}
{words}		    { printf("It is a word"); return WORD;}
{prepositions}  { printf("It is a preposition"); return PREPOSITION;}
. return yytext[0];

%%
