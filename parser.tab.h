/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_PARSER_TAB_H_INCLUDED
# define YY_YY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    INCLUDE_CARLINHO = 258,        /* INCLUDE_CARLINHO  */
    USING = 259,                   /* USING  */
    NAMESPACE = 260,               /* NAMESPACE  */
    FACILITADOR = 261,             /* FACILITADOR  */
    INT = 262,                     /* INT  */
    DOUBLE = 263,                  /* DOUBLE  */
    CHAR = 264,                    /* CHAR  */
    STRING = 265,                  /* STRING  */
    BOOL = 266,                    /* BOOL  */
    LONG_LONG = 267,               /* LONG_LONG  */
    IF = 268,                      /* IF  */
    ELIF = 269,                    /* ELIF  */
    ELSE = 270,                    /* ELSE  */
    MATCH = 271,                   /* MATCH  */
    CASE = 272,                    /* CASE  */
    FOR = 273,                     /* FOR  */
    WHILE = 274,                   /* WHILE  */
    DO = 275,                      /* DO  */
    MAP = 276,                     /* MAP  */
    UNORDERED_MAP = 277,           /* UNORDERED_MAP  */
    SET = 278,                     /* SET  */
    UNORDERED_SET = 279,           /* UNORDERED_SET  */
    COUT = 280,                    /* COUT  */
    CIN = 281,                     /* CIN  */
    INSERT = 282,                  /* INSERT  */
    EXTRACT = 283,                 /* EXTRACT  */
    EQ = 284,                      /* EQ  */
    NEQ = 285,                     /* NEQ  */
    LE = 286,                      /* LE  */
    GE = 287,                      /* GE  */
    LT = 288,                      /* LT  */
    GT = 289,                      /* GT  */
    ASSIGN = 290,                  /* ASSIGN  */
    PLUS = 291,                    /* PLUS  */
    MINUS = 292,                   /* MINUS  */
    MUL = 293,                     /* MUL  */
    DIV = 294,                     /* DIV  */
    LBRACE = 295,                  /* LBRACE  */
    RBRACE = 296,                  /* RBRACE  */
    LPAREN = 297,                  /* LPAREN  */
    RPAREN = 298,                  /* RPAREN  */
    SEMICOLON = 299,               /* SEMICOLON  */
    COMMA = 300,                   /* COMMA  */
    NUMBER = 301,                  /* NUMBER  */
    IDENTIFIER = 302,              /* IDENTIFIER  */
    STRING_LITERAL = 303           /* STRING_LITERAL  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 10 "parser.y"

    int ival;
    char *sval;

#line 117 "parser.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */