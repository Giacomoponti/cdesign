
(* The type of tokens. *)

type token = 
  | WHILE
  | VAR
  | TVOID
  | TSTRING
  | TRUE
  | TINT
  | TILDE
  | TBOOL
  | TARRAY of (Ast.ty)
  | STRING of (string)
  | STAR
  | SHR
  | SHL
  | SEMI
  | SAR
  | RPAREN
  | RETURN
  | RBRACKET
  | RBRACE
  | PLUS
  | OR
  | NULL
  | NEW
  | LPAREN
  | LEQ
  | LBRACKET
  | LBRACE
  | L
  | INT of (int64)
  | IF
  | IDENT of (string)
  | GLOBAL
  | GEQ
  | G
  | FOR
  | FALSE
  | EQEQ
  | EQ
  | EOF
  | ELSE
  | DASH
  | COMMA
  | BOR
  | BOOL of (bool)
  | BANGEQ
  | BANG
  | BAND
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val stmt_top: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.stmt Ast.node)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.prog)

val exp_top: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.exp Ast.node)
