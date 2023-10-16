%{
	#include <stdio.h>
	#include <string.h>
	#include "y.tab.h"
%}

%option noyywrap
%option yylineno

words               [a-zA-Z0-9]+
Nouns               [A-Z][a-z]*
Numbers             [0-9]+
Verb                {words}*{Numbers}{words}*
Adwords             [a-z]*   
punctuations        [.,?!]
prepositions        [@]{words}
space  		    [\s\n]+

%%
\n 	{ }

{words}		{ printf("It is a word"); return WORD;}
{Nouns}		{ printf("It is a Noun"); return NOUN;}
{Numbers}       { printf("It is a Number"); return NUMBER;}
{Verb}          { printf("It is a Verb"); return VERB;}
{Adwords}       { printf("It is a Adword"); return ADWORD;}
{punctuations}  { printf("It is a punctuation"); return PUNCTUATION;}
{prepositions}  { printf("It is a preposition"); return PREPOSITION;}
{space}         { printf("Here is a space"); return SPACE;}

%%
