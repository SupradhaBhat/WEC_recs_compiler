%{
	#include <stdio.h>
	#include <string.h>
	#include "y.tab.h"
%}

%option noyywrap
%option yylineno

words              	[a-zA-Z0-9]+
Nouns              	[A-Z][a-z]*
Numbers             [0-9]+
Verb                {words}*{Numbers}{words}*
Adwords             [a-z]*   
punctuations        [.,?!]
prepositions        [@]{words}
space  				[\s\n]+

%%
\n 	{ }

{words}		    { return WORD;}
{Nouns}		    { return NOUN;}
{Numbers}       { return NUMBER;}
{Verb}          { return VERB;}
{Adwords}       { return ADWORD;}
{punctuations}  { return PUNCTUATION;}
{prepositions}  { return PREPOSITION;}
{space}         { return SPACE;}

%%