%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex(void);
extern int yylineno;
%}

%union {
    int ival;
    char *sval;
}

%token INCLUDE_CARLINHO USING NAMESPACE FACILITADOR
%token INT DOUBLE CHAR STRING BOOL LONG_LONG
%token IF ELIF ELSE MATCH CASE
%token FOR WHILE DO
%token MAP UNORDERED_MAP SET UNORDERED_SET
%token COUT CIN INSERT EXTRACT
%token EQ NEQ LE GE LT GT ASSIGN
%token PLUS MINUS MUL DIV
%token LBRACE RBRACE LPAREN RPAREN SEMICOLON COMMA
%token <ival> NUMBER
%token <sval> IDENTIFIER STRING_LITERAL
%token NEWLINE

%%

program
    : include_directive using_directive function_list
    ;

include_directive
    : INCLUDE_CARLINHO
    ;

using_directive
    : USING NAMESPACE FACILITADOR SEMICOLON
    | /* opcional */
    ;

function_list
    : function_definition
    | function_list function_definition
    ;

function_definition
    : type IDENTIFIER LPAREN parameter_list RPAREN compound_statement
    ;

type
    : INT
    | DOUBLE
    | CHAR
    | STRING
    | BOOL
    | LONG_LONG
    ;

parameter_list
    : parameter
    | parameter_list COMMA parameter
    | /* vazio */
    ;

parameter
    : type IDENTIFIER
    ;

compound_statement
    : LBRACE statement_list RBRACE
    ;

statement_list
    : statement
    | statement_list statement
    ;

statement
    : declaration SEMICOLON
    | assignment SEMICOLON
    | io_statement SEMICOLON
    | conditional
    | while_loop
    | for_loop
    ;

declaration
    : type IDENTIFIER
    | type IDENTIFIER ASSIGN expression
    ;

assignment
    : IDENTIFIER ASSIGN expression
    ;

io_statement
    : COUT INSERT expression
    | CIN EXTRACT IDENTIFIER
    ;

conditional
    : IF LPAREN expression RPAREN compound_statement else_if_list optional_else
    ;

else_if_list
    : else_if_list ELIF LPAREN expression RPAREN compound_statement
    | /* vazio */
    ;

optional_else
    : ELSE compound_statement
    | /* vazio */
    ;

while_loop
    : WHILE LPAREN expression RPAREN compound_statement
    | DO compound_statement WHILE LPAREN expression RPAREN SEMICOLON
    ;

for_loop
    : FOR LPAREN statement SEMICOLON expression SEMICOLON assignment RPAREN compound_statement
    ;

expression
    : term
    | expression PLUS term
    | expression MINUS term
    | expression EQ term
    | expression NEQ term
    | expression LT term
    | expression GT term
    | expression LE term
    | expression GE term
    ;

term
    : NUMBER
    | IDENTIFIER
    | STRING_LITERAL
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Erro sintático na linha %d: %s\n", yylineno, s);
}

int main(void) {
    printf("Iniciando análise sintática da linguagem Carlos...\n");
    if (yyparse() == 0) {
        printf("Análise concluída com sucesso! Código válido.\n");
    } else {
        printf("Falha na análise sintática.\n");
    }
    return 0;
}
