%{
#include <stdio.h>
#include <string.h>
#include "parser.tab.h" 
%}

%option noyywrap

%%

[ \t]+              { /* Ignora apenas espaços e tabulações na mesma linha */ }
\n|\r\n             { return NEWLINE; }
\/\/.*              { /* Ignora comentários de uma linha */ }
\/\*([^*]|\*+[^/])*\*+\/ { /* Ignora comentários de bloco */ }

"#include <carlinho.h>"   { return INCLUDE_CARLINHO; }
"using"                 { return USING; }
"namespace"             { return NAMESPACE; }
"facilitador"           { return FACILITADOR; }

"int"                   { return INT; }
"double"                { return DOUBLE; }
"char"                  { return CHAR; }
"string"                { return STRING; }
"bool"                  { return BOOL; }
"long long"             { return LONG_LONG; }

"if"                    { return IF; }
"elif"                  { return ELIF; }
"else"                  { return ELSE; }
"match"                 { return MATCH; }
"case"                  { return CASE; }

"for"                   { return FOR; }
"while"                 { return WHILE; }
"do"                    { return DO; }

"map"                   { return MAP; }
"unordered_map"         { return UNORDERED_MAP; }
"set"                   { return SET; }
"unordered_set"         { return UNORDERED_SET; }

"std::cout"             { return COUT; }
"std::cin"              { return CIN; }
"cout"                  { return COUT; }
"cin"                   { return CIN; }

"<<"                    { return INSERT; }
">>"                    { return EXTRACT; }

"=="                    { return EQ; }
"!="                    { return NEQ; }
"<="                    { return LE; }
">="                    { return GE; }
"<"                     { return LT; }
">"                     { return GT; }
"="                     { return ASSIGN; }

"+"                     { return PLUS; }
"-"                     { return MINUS; }
"*"                     { return MUL; }
"/"                     { return DIV; }

"{"                     { return LBRACE; }
"}"                     { return RBRACE; }
"("                     { return LPAREN; }
")"                     { return RPAREN; }
";"                     { return SEMICOLON; }
","                     { return COMMA; }

[0-9]+                  { yylval.ival = atoi(yytext); return NUMBER; }
[a-zA-Z_][a-zA-Z0-9_]*  { yylval.sval = strdup(yytext); return IDENTIFIER; }
\"([^\\\"]|\\.)*\"      { yylval.sval = strdup(yytext); return STRING_LITERAL; }

.                       { printf("Erro léxico: caractere desconhecido '%s'\n", yytext); }

%%
