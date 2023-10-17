# WEC_recs_compiler
This is a compiler for english-like language
There are two files - lexer for lexical analysis i.e tokenisation.
                    - parser that contains the grammar(CFGs) that identifies whether the input adheres to the rules of the language

LEXER-
Identifies tokens like words, nouns, numbers, verb, adwords, punctuations and prepositions according to the instructions given with the doc.
The lexer does the job of identifying the tokens from the input and print an output message for each token.
Example-
Apple prints an output "It is a noun"
hi23hello prints an output message "it is a verb" according to the rules in the document.

PARSER-
We define CFGs according to rules given in the document.
I have identified three possible rules i.e 
NOUN VERB NOUN PUNCTUATION 
ADWORD NOUN ADWORD VERB ADWORD NOUN
NOUN VERB PUNCTUATION
