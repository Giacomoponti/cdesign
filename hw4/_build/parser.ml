
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | WHILE
    | VAR
    | TVOID
    | TSTRING
    | TRUE
    | TINT
    | TILDE
    | TBOOL
    | TARRAY of (
# 96 "parser.mly"
       (Ast.ty)
# 23 "parser.ml"
  )
    | STRING of (
# 13 "parser.mly"
       (string)
# 28 "parser.ml"
  )
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
    | INT of (
# 11 "parser.mly"
       (int64)
# 51 "parser.ml"
  )
    | IF
    | IDENT of (
# 14 "parser.mly"
       (string)
# 57 "parser.ml"
  )
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
    | BOOL of (
# 16 "parser.mly"
       (bool)
# 74 "parser.ml"
  )
    | BANGEQ
    | BANG
    | BAND
    | AND
  
end

include MenhirBasics

# 1 "parser.mly"
  
open Ast

let loc (startpos:Lexing.position) (endpos:Lexing.position) (elt:'a) : 'a node =
  { elt ; loc=Range.mk_lex_range startpos endpos }


# 93 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_exp_top) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: exp_top. *)

  | MenhirState005 : (('s, 'r) _menhir_cell1_TILDE, 'r) _menhir_state
    (** State 005.
        Stack shape : TILDE.
        Start symbol: <undetermined>. *)

  | MenhirState008 : (('s, 'r) _menhir_cell1_NEW, 'r) _menhir_state
    (** State 008.
        Stack shape : NEW.
        Start symbol: <undetermined>. *)

  | MenhirState011 : ((('s, 'r) _menhir_cell1_NEW, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 011.
        Stack shape : NEW ty.
        Start symbol: <undetermined>. *)

  | MenhirState013 : (((('s, 'r) _menhir_cell1_NEW, 'r) _menhir_cell1_ty, 'r) _menhir_cell1_RBRACKET, 'r) _menhir_state
    (** State 013.
        Stack shape : NEW ty RBRACKET.
        Start symbol: <undetermined>. *)

  | MenhirState014 : (('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_state
    (** State 014.
        Stack shape : LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState018 : (('s, 'r) _menhir_cell1_DASH, 'r) _menhir_state
    (** State 018.
        Stack shape : DASH.
        Start symbol: <undetermined>. *)

  | MenhirState019 : (('s, 'r) _menhir_cell1_BANG, 'r) _menhir_state
    (** State 019.
        Stack shape : BANG.
        Start symbol: <undetermined>. *)

  | MenhirState021 : (('s, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 021.
        Stack shape : ty.
        Start symbol: <undetermined>. *)

  | MenhirState025 : (('s, 'r) _menhir_cell1_exp _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 025.
        Stack shape : exp LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState030 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 030.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState032 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 032.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState034 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 034.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState036 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 036.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState038 : (('s, 'r) _menhir_cell1_exp _menhir_cell0_DASH, 'r) _menhir_state
    (** State 038.
        Stack shape : exp DASH.
        Start symbol: <undetermined>. *)

  | MenhirState040 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 040.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState042 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 042.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState045 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 045.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState047 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 047.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState049 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 049.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState051 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 051.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState053 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 053.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState055 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 055.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState057 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 057.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState059 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 059.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState061 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 061.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState063 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 063.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState065 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 065.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState078 : ('s, _menhir_box_prog) _menhir_state
    (** State 078.
        Stack shape : .
        Start symbol: prog. *)

  | MenhirState081 : (('s, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_state
    (** State 081.
        Stack shape : TVOID IDENT LPAREN.
        Start symbol: prog. *)

  | MenhirState083 : (('s, _menhir_box_prog) _menhir_cell1_ty, _menhir_box_prog) _menhir_state
    (** State 083.
        Stack shape : ty.
        Start symbol: prog. *)

  | MenhirState086 : (('s, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT, _menhir_box_prog) _menhir_state
    (** State 086.
        Stack shape : ty IDENT.
        Start symbol: prog. *)

  | MenhirState091 : ((('s, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN, _menhir_box_prog) _menhir_state
    (** State 091.
        Stack shape : TVOID IDENT LPAREN arglist RPAREN.
        Start symbol: prog. *)

  | MenhirState092 : (('s, 'r) _menhir_cell1_LBRACE, 'r) _menhir_state
    (** State 092.
        Stack shape : LBRACE.
        Start symbol: <undetermined>. *)

  | MenhirState094 : (('s, 'r) _menhir_cell1_WHILE _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 094.
        Stack shape : WHILE LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState096 : ((('s, 'r) _menhir_cell1_WHILE _menhir_cell0_LPAREN, 'r) _menhir_cell1_exp _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 096.
        Stack shape : WHILE LPAREN exp RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState100 : (('s, 'r) _menhir_cell1_VAR _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 100.
        Stack shape : VAR IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState102 : (('s, 'r) _menhir_cell1_RETURN, 'r) _menhir_state
    (** State 102.
        Stack shape : RETURN.
        Start symbol: <undetermined>. *)

  | MenhirState107 : (('s, 'r) _menhir_cell1_IF _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 107.
        Stack shape : IF LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState109 : ((('s, 'r) _menhir_cell1_IF _menhir_cell0_LPAREN, 'r) _menhir_cell1_exp _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 109.
        Stack shape : IF LPAREN exp RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState111 : (((('s, 'r) _menhir_cell1_IF _menhir_cell0_LPAREN, 'r) _menhir_cell1_exp _menhir_cell0_RPAREN, 'r) _menhir_cell1_block, 'r) _menhir_state
    (** State 111.
        Stack shape : IF LPAREN exp RPAREN block.
        Start symbol: <undetermined>. *)

  | MenhirState117 : (('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 117.
        Stack shape : FOR LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState119 : (('s, 'r) _menhir_cell1_vdecl, 'r) _menhir_state
    (** State 119.
        Stack shape : vdecl.
        Start symbol: <undetermined>. *)

  | MenhirState123 : ((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, 'r) _menhir_state
    (** State 123.
        Stack shape : FOR LPAREN loption(separated_nonempty_list(COMMA,vdecl)) SEMI.
        Start symbol: <undetermined>. *)

  | MenhirState125 : (((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, 'r) _menhir_cell1_option_exp_ _menhir_cell0_SEMI, 'r) _menhir_state
    (** State 125.
        Stack shape : FOR LPAREN loption(separated_nonempty_list(COMMA,vdecl)) SEMI option(exp) SEMI.
        Start symbol: <undetermined>. *)

  | MenhirState130 : ((((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, 'r) _menhir_cell1_option_exp_ _menhir_cell0_SEMI, 'r) _menhir_cell1_option_stmt_ _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 130.
        Stack shape : FOR LPAREN loption(separated_nonempty_list(COMMA,vdecl)) SEMI option(exp) SEMI option(stmt) RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState133 : (('s, 'r) _menhir_cell1_lhs, 'r) _menhir_state
    (** State 133.
        Stack shape : lhs.
        Start symbol: <undetermined>. *)

  | MenhirState138 : (('s, 'r) _menhir_cell1_exp _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 138.
        Stack shape : exp LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState142 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 142.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState146 : (('s, 'r) _menhir_cell1_stmt, 'r) _menhir_state
    (** State 146.
        Stack shape : stmt.
        Start symbol: <undetermined>. *)

  | MenhirState153 : (('s, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT, _menhir_box_prog) _menhir_state
    (** State 153.
        Stack shape : GLOBAL IDENT.
        Start symbol: prog. *)

  | MenhirState158 : (('s, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_state
    (** State 158.
        Stack shape : NEW.
        Start symbol: prog. *)

  | MenhirState160 : ((('s, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_cell1_ty, _menhir_box_prog) _menhir_state
    (** State 160.
        Stack shape : NEW ty.
        Start symbol: prog. *)

  | MenhirState162 : (((('s, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_cell1_ty, _menhir_box_prog) _menhir_cell1_RBRACKET, _menhir_box_prog) _menhir_state
    (** State 162.
        Stack shape : NEW ty RBRACKET.
        Start symbol: prog. *)

  | MenhirState166 : (('s, _menhir_box_prog) _menhir_cell1_ty, _menhir_box_prog) _menhir_state
    (** State 166.
        Stack shape : ty.
        Start symbol: prog. *)

  | MenhirState173 : (('s, _menhir_box_prog) _menhir_cell1_gexp, _menhir_box_prog) _menhir_state
    (** State 173.
        Stack shape : gexp.
        Start symbol: prog. *)

  | MenhirState179 : (('s, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_state
    (** State 179.
        Stack shape : ty IDENT LPAREN.
        Start symbol: prog. *)

  | MenhirState181 : ((('s, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN, _menhir_box_prog) _menhir_state
    (** State 181.
        Stack shape : ty IDENT LPAREN arglist RPAREN.
        Start symbol: prog. *)

  | MenhirState186 : (('s, _menhir_box_prog) _menhir_cell1_decl, _menhir_box_prog) _menhir_state
    (** State 186.
        Stack shape : decl.
        Start symbol: prog. *)

  | MenhirState188 : ('s, _menhir_box_stmt_top) _menhir_state
    (** State 188.
        Stack shape : .
        Start symbol: stmt_top. *)


and ('s, 'r) _menhir_cell1_arglist = 
  | MenhirCell1_arglist of 's * ('s, 'r) _menhir_state * ((Ast.ty * Ast.id) list)

and ('s, 'r) _menhir_cell1_block = 
  | MenhirCell1_block of 's * ('s, 'r) _menhir_state * (Ast.block) * Lexing.position

and ('s, 'r) _menhir_cell1_decl = 
  | MenhirCell1_decl of 's * ('s, 'r) _menhir_state * (Ast.decl)

and ('s, 'r) _menhir_cell1_exp = 
  | MenhirCell1_exp of 's * ('s, 'r) _menhir_state * (Ast.exp Ast.node) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_gexp = 
  | MenhirCell1_gexp of 's * ('s, 'r) _menhir_state * (Ast.exp Ast.node)

and ('s, 'r) _menhir_cell1_lhs = 
  | MenhirCell1_lhs of 's * ('s, 'r) _menhir_state * (Ast.exp Ast.node) * Lexing.position

and ('s, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ = 
  | MenhirCell1_loption_separated_nonempty_list_COMMA_vdecl__ of 's * ('s, 'r) _menhir_state * (Ast.vdecl list)

and ('s, 'r) _menhir_cell1_option_exp_ = 
  | MenhirCell1_option_exp_ of 's * ('s, 'r) _menhir_state * (Ast.exp Ast.node option)

and ('s, 'r) _menhir_cell1_option_stmt_ = 
  | MenhirCell1_option_stmt_ of 's * ('s, 'r) _menhir_state * (Ast.stmt Ast.node option)

and ('s, 'r) _menhir_cell1_stmt = 
  | MenhirCell1_stmt of 's * ('s, 'r) _menhir_state * (Ast.stmt Ast.node)

and ('s, 'r) _menhir_cell1_ty = 
  | MenhirCell1_ty of 's * ('s, 'r) _menhir_state * (Ast.ty) * Lexing.position

and ('s, 'r) _menhir_cell1_vdecl = 
  | MenhirCell1_vdecl of 's * ('s, 'r) _menhir_state * (Ast.vdecl) * Lexing.position

and ('s, 'r) _menhir_cell1_BANG = 
  | MenhirCell1_BANG of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_DASH = 
  | MenhirCell1_DASH of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_DASH = 
  | MenhirCell0_DASH of 's * Lexing.position

and ('s, 'r) _menhir_cell1_FOR = 
  | MenhirCell1_FOR of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_GLOBAL = 
  | MenhirCell1_GLOBAL of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * (
# 14 "parser.mly"
       (string)
# 452 "parser.ml"
) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_LBRACE = 
  | MenhirCell1_LBRACE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAREN = 
  | MenhirCell1_LPAREN of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_LPAREN = 
  | MenhirCell0_LPAREN of 's * Lexing.position

and ('s, 'r) _menhir_cell1_NEW = 
  | MenhirCell1_NEW of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_RBRACKET = 
  | MenhirCell1_RBRACKET of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_RETURN = 
  | MenhirCell1_RETURN of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_RPAREN = 
  | MenhirCell0_RPAREN of 's * Lexing.position

and 's _menhir_cell0_SEMI = 
  | MenhirCell0_SEMI of 's * Lexing.position

and ('s, 'r) _menhir_cell1_TILDE = 
  | MenhirCell1_TILDE of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_TVOID = 
  | MenhirCell1_TVOID of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_VAR = 
  | MenhirCell1_VAR of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_WHILE = 
  | MenhirCell1_WHILE of 's * ('s, 'r) _menhir_state * Lexing.position

and _menhir_box_stmt_top = 
  | MenhirBox_stmt_top of (Ast.stmt Ast.node) [@@unboxed]

and _menhir_box_prog = 
  | MenhirBox_prog of (Ast.prog) [@@unboxed]

and _menhir_box_exp_top = 
  | MenhirBox_exp_top of (Ast.exp Ast.node) [@@unboxed]

let _menhir_action_03 =
  fun xs ->
    let l = 
# 229 "<standard.mly>"
    ( xs )
# 508 "parser.ml"
     in
    (
# 116 "parser.mly"
                                            ( l )
# 513 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_04 =
  fun stmts ->
    (
# 217 "parser.mly"
                                   ( stmts )
# 521 "parser.ml"
     : (Ast.block))

let _menhir_action_05 =
  fun _endpos__5_ _startpos__1_ init name ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 111 "parser.mly"
    ( Gvdecl (loc _startpos _endpos { name; init }) )
# 531 "parser.ml"
     : (Ast.decl))

let _menhir_action_06 =
  fun _endpos_body_ _startpos__1_ args body fname ->
    let frtyp = 
# 125 "parser.mly"
           ( RetVoid )
# 539 "parser.ml"
     in
    let _startpos_frtyp_ = _startpos__1_ in
    let _endpos = _endpos_body_ in
    let _startpos = _startpos_frtyp_ in
    (
# 113 "parser.mly"
    ( Gfdecl (loc _startpos _endpos { frtyp; fname; args; body }) )
# 547 "parser.ml"
     : (Ast.decl))

let _menhir_action_07 =
  fun _endpos_body_ _startpos_t_ args body fname t ->
    let frtyp = 
# 126 "parser.mly"
           ( RetVal t )
# 555 "parser.ml"
     in
    let _startpos_frtyp_ = _startpos_t_ in
    let _endpos = _endpos_body_ in
    let _startpos = _startpos_frtyp_ in
    (
# 113 "parser.mly"
    ( Gfdecl (loc _startpos _endpos { frtyp; fname; args; body }) )
# 563 "parser.ml"
     : (Ast.decl))

let _menhir_action_08 =
  fun () ->
    (
# 224 "parser.mly"
                      ( [] )
# 571 "parser.ml"
     : (Ast.block))

let _menhir_action_09 =
  fun b ->
    (
# 225 "parser.mly"
                      ( b )
# 579 "parser.ml"
     : (Ast.block))

let _menhir_action_10 =
  fun ifs ->
    (
# 226 "parser.mly"
                      ( [ ifs ] )
# 587 "parser.ml"
     : (Ast.block))

let _menhir_action_11 =
  fun _endpos_i_ _startpos_i_ i ->
    let _endpos = _endpos_i_ in
    let _startpos = _startpos_i_ in
    (
# 172 "parser.mly"
                        ( loc _startpos _endpos @@ CInt i )
# 597 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_12 =
  fun _endpos_s_ _startpos_s_ s ->
    let _endpos = _endpos_s_ in
    let _startpos = _startpos_s_ in
    (
# 173 "parser.mly"
                        (loc _startpos _endpos @@ CStr s )
# 607 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_13 =
  fun _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 174 "parser.mly"
                      (loc _startpos _endpos @@ CBool true)
# 617 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_14 =
  fun _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 175 "parser.mly"
                      (loc _startpos _endpos @@ CBool false)
# 627 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_15 =
  fun _endpos__2_ _startpos__1_ ->
    let t = 
# 129 "parser.mly"
            ( RString )
# 635 "parser.ml"
     in
    let _startpos_t_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 176 "parser.mly"
                          ( loc _startpos _endpos @@ CNull t )
# 643 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_16 =
  fun _endpos__2_ _startpos_t_ t ->
    let t = 
# 130 "parser.mly"
                           ( RArray t )
# 651 "parser.ml"
     in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 176 "parser.mly"
                          ( loc _startpos _endpos @@ CNull t )
# 658 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_17 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 133 "parser.mly"
           ( Add )
# 666 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 673 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_18 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 134 "parser.mly"
           ( Sub )
# 681 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 688 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_19 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 135 "parser.mly"
           ( Mul )
# 696 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 703 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_20 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 136 "parser.mly"
           ( Eq )
# 711 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 718 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_21 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 138 "parser.mly"
           ( Neq )
# 726 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 733 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_22 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 139 "parser.mly"
        ( Shl )
# 741 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 748 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_23 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 140 "parser.mly"
        ( Sar )
# 756 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 763 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_24 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 141 "parser.mly"
        ( Shr )
# 771 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 778 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_25 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 142 "parser.mly"
       ( Or )
# 786 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 793 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_26 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 143 "parser.mly"
        ( And )
# 801 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 808 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_27 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 144 "parser.mly"
      ( Gt )
# 816 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 823 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_28 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 145 "parser.mly"
        ( Gte )
# 831 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 838 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_29 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 146 "parser.mly"
      ( Lt )
# 846 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 853 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_30 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 147 "parser.mly"
        ( Lte )
# 861 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 868 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_31 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 148 "parser.mly"
         ( IAnd )
# 876 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 883 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_32 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 149 "parser.mly"
        ( IOr )
# 891 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 898 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_33 =
  fun _endpos_e_ _startpos__1_ e ->
    let u = 
# 153 "parser.mly"
          ( Neg )
# 906 "parser.ml"
     in
    let _startpos_u_ = _startpos__1_ in
    let _endpos = _endpos_e_ in
    let _startpos = _startpos_u_ in
    (
# 178 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 914 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_34 =
  fun _endpos_e_ _startpos__1_ e ->
    let u = 
# 154 "parser.mly"
          ( Lognot )
# 922 "parser.ml"
     in
    let _startpos_u_ = _startpos__1_ in
    let _endpos = _endpos_e_ in
    let _startpos = _startpos_u_ in
    (
# 178 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 930 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_35 =
  fun _endpos_e_ _startpos__1_ e ->
    let u = 
# 155 "parser.mly"
          ( Bitnot )
# 938 "parser.ml"
     in
    let _startpos_u_ = _startpos__1_ in
    let _endpos = _endpos_e_ in
    let _startpos = _startpos_u_ in
    (
# 178 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 946 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_36 =
  fun _endpos_id_ _startpos_id_ id ->
    let _endpos = _endpos_id_ in
    let _startpos = _startpos_id_ in
    (
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Id id )
# 956 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_37 =
  fun _endpos__4_ _startpos_e_ e i ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    (
# 181 "parser.mly"
                        ( loc _startpos _endpos @@ Index (e, i) )
# 966 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_38 =
  fun _endpos__4_ _startpos_e_ e xs ->
    let es = 
# 229 "<standard.mly>"
    ( xs )
# 974 "parser.ml"
     in
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    (
# 183 "parser.mly"
                        ( loc _startpos _endpos @@ Call (e,es) )
# 981 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_39 =
  fun e ->
    (
# 184 "parser.mly"
                        ( e )
# 989 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_40 =
  fun _endpos__5_ _startpos__1_ e t ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 186 "parser.mly"
                        (loc _startpos _endpos @@ NewArr(t, e))
# 999 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_41 =
  fun _endpos__7_ _startpos__1_ t xs ->
    let es = 
# 229 "<standard.mly>"
    ( xs )
# 1007 "parser.ml"
     in
    let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    (
# 190 "parser.mly"
                        (loc _startpos _endpos @@ CArr(t, es))
# 1014 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_42 =
  fun e ->
    (
# 101 "parser.mly"
              ( e )
# 1022 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_43 =
  fun _endpos__2_ _startpos__1_ ->
    let t = 
# 129 "parser.mly"
            ( RString )
# 1030 "parser.ml"
     in
    let _startpos_t_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 158 "parser.mly"
                 ( loc _startpos _endpos @@ CNull t )
# 1038 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_44 =
  fun _endpos__2_ _startpos_t_ t ->
    let t = 
# 130 "parser.mly"
                           ( RArray t )
# 1046 "parser.ml"
     in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 158 "parser.mly"
                 ( loc _startpos _endpos @@ CNull t )
# 1053 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_45 =
  fun _endpos_i_ _startpos_i_ i ->
    let _endpos = _endpos_i_ in
    let _startpos = _startpos_i_ in
    (
# 159 "parser.mly"
               ( loc _startpos _endpos @@ CInt i )
# 1063 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_46 =
  fun _endpos_s_ _startpos_s_ s ->
    let _endpos = _endpos_s_ in
    let _startpos = _startpos_s_ in
    (
# 160 "parser.mly"
             ( loc _startpos _endpos @@ CStr s)
# 1073 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_47 =
  fun _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 161 "parser.mly"
         ( loc _startpos _endpos @@ CBool true)
# 1083 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_48 =
  fun _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 162 "parser.mly"
          ( loc _startpos _endpos @@ CBool false)
# 1093 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_49 =
  fun _endpos__7_ _startpos__1_ t xs ->
    let es = 
# 229 "<standard.mly>"
    ( xs )
# 1101 "parser.ml"
     in
    let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    (
# 164 "parser.mly"
          (loc _startpos _endpos @@ CArr(t, es))
# 1108 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_50 =
  fun _endpos_b2_ _startpos__1_ b1 b2 e ->
    let _endpos = _endpos_b2_ in
    let _startpos = _startpos__1_ in
    (
# 221 "parser.mly"
    ( loc _startpos _endpos @@ If(e,b1,b2) )
# 1118 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_51 =
  fun _endpos_id_ _startpos_id_ id ->
    let _endpos = _endpos_id_ in
    let _startpos = _startpos_id_ in
    (
# 167 "parser.mly"
                        ( loc _startpos _endpos @@ Id id )
# 1128 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_52 =
  fun _endpos__4_ _startpos_e_ e i ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    (
# 169 "parser.mly"
                        ( loc _startpos _endpos @@ Index (e, i) )
# 1138 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_53 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1146 "parser.ml"
     : (Ast.prog))

let _menhir_action_54 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1154 "parser.ml"
     : (Ast.prog))

let _menhir_action_55 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1162 "parser.ml"
     : (Ast.block))

let _menhir_action_56 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1170 "parser.ml"
     : (Ast.block))

let _menhir_action_57 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 1178 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_58 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 1186 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_59 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 1194 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_60 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 1202 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_61 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 1210 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_62 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 1218 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_63 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 1226 "parser.ml"
     : (Ast.vdecl list))

let _menhir_action_64 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 1234 "parser.ml"
     : (Ast.vdecl list))

let _menhir_action_65 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1242 "parser.ml"
     : (Ast.exp Ast.node option))

let _menhir_action_66 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 1250 "parser.ml"
     : (Ast.exp Ast.node option))

let _menhir_action_67 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1258 "parser.ml"
     : (Ast.stmt Ast.node option))

let _menhir_action_68 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 1266 "parser.ml"
     : (Ast.stmt Ast.node option))

let _menhir_action_69 =
  fun p ->
    (
# 107 "parser.mly"
                      ( p )
# 1274 "parser.ml"
     : (Ast.prog))

let _menhir_action_70 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1282 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_71 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1290 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_72 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1298 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_73 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1306 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_74 =
  fun x y ->
    let x = 
# 164 "<standard.mly>"
    ( (x, y) )
# 1314 "parser.ml"
     in
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1319 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_75 =
  fun x xs y ->
    let x = 
# 164 "<standard.mly>"
    ( (x, y) )
# 1327 "parser.ml"
     in
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1332 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_76 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1340 "parser.ml"
     : (Ast.vdecl list))

let _menhir_action_77 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1348 "parser.ml"
     : (Ast.vdecl list))

let _menhir_action_78 =
  fun _endpos__2_ _startpos_d_ d ->
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_d_ in
    (
# 205 "parser.mly"
                        ( loc _startpos _endpos @@ Decl(d) )
# 1358 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_79 =
  fun _endpos__4_ _startpos_p_ e p ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_p_ in
    (
# 206 "parser.mly"
                        ( loc _startpos _endpos @@ Assn(p,e) )
# 1368 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_80 =
  fun _endpos__5_ _startpos_e_ e xs ->
    let es = 
# 229 "<standard.mly>"
    ( xs )
# 1376 "parser.ml"
     in
    let _endpos = _endpos__5_ in
    let _startpos = _startpos_e_ in
    (
# 208 "parser.mly"
                        ( loc _startpos _endpos @@ SCall (e, es) )
# 1383 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_81 =
  fun ifs ->
    (
# 209 "parser.mly"
                        ( ifs )
# 1391 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_82 =
  fun _endpos__2_ _startpos__1_ ->
    let _endpos = _endpos__2_ in
    let _startpos = _startpos__1_ in
    (
# 210 "parser.mly"
                        ( loc _startpos _endpos @@ Ret(None) )
# 1401 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_83 =
  fun _endpos__3_ _startpos__1_ e ->
    let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    (
# 211 "parser.mly"
                        ( loc _startpos _endpos @@ Ret(Some e) )
# 1411 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_84 =
  fun _endpos_b_ _startpos__1_ b e ->
    let _endpos = _endpos_b_ in
    let _startpos = _startpos__1_ in
    (
# 213 "parser.mly"
                        ( loc _startpos _endpos @@ While(e, b) )
# 1421 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_85 =
  fun _endpos_b_ _startpos__1_ b exp_opt stmt xs ->
    let d = 
# 229 "<standard.mly>"
    ( xs )
# 1429 "parser.ml"
     in
    let _endpos = _endpos_b_ in
    let _startpos = _startpos__1_ in
    (
# 215 "parser.mly"
                        ( loc _startpos _endpos @@ For(d, exp_opt, stmt, b))
# 1436 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_86 =
  fun s ->
    (
# 104 "parser.mly"
               ( s )
# 1444 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_87 =
  fun () ->
    (
# 120 "parser.mly"
           ( TInt )
# 1452 "parser.ml"
     : (Ast.ty))

let _menhir_action_88 =
  fun () ->
    (
# 121 "parser.mly"
          ( TBool )
# 1460 "parser.ml"
     : (Ast.ty))

let _menhir_action_89 =
  fun () ->
    let r = 
# 129 "parser.mly"
            ( RString )
# 1468 "parser.ml"
     in
    (
# 122 "parser.mly"
           ( TRef r )
# 1473 "parser.ml"
     : (Ast.ty))

let _menhir_action_90 =
  fun t ->
    let r = 
# 130 "parser.mly"
                           ( RArray t )
# 1481 "parser.ml"
     in
    (
# 122 "parser.mly"
           ( TRef r )
# 1486 "parser.ml"
     : (Ast.ty))

let _menhir_action_91 =
  fun id init ->
    (
# 200 "parser.mly"
                             ( (id, init) )
# 1494 "parser.ml"
     : (Ast.vdecl))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AND ->
        "AND"
    | BAND ->
        "BAND"
    | BANG ->
        "BANG"
    | BANGEQ ->
        "BANGEQ"
    | BOOL _ ->
        "BOOL"
    | BOR ->
        "BOR"
    | COMMA ->
        "COMMA"
    | DASH ->
        "DASH"
    | ELSE ->
        "ELSE"
    | EOF ->
        "EOF"
    | EQ ->
        "EQ"
    | EQEQ ->
        "EQEQ"
    | FALSE ->
        "FALSE"
    | FOR ->
        "FOR"
    | G ->
        "G"
    | GEQ ->
        "GEQ"
    | GLOBAL ->
        "GLOBAL"
    | IDENT _ ->
        "IDENT"
    | IF ->
        "IF"
    | INT _ ->
        "INT"
    | L ->
        "L"
    | LBRACE ->
        "LBRACE"
    | LBRACKET ->
        "LBRACKET"
    | LEQ ->
        "LEQ"
    | LPAREN ->
        "LPAREN"
    | NEW ->
        "NEW"
    | NULL ->
        "NULL"
    | OR ->
        "OR"
    | PLUS ->
        "PLUS"
    | RBRACE ->
        "RBRACE"
    | RBRACKET ->
        "RBRACKET"
    | RETURN ->
        "RETURN"
    | RPAREN ->
        "RPAREN"
    | SAR ->
        "SAR"
    | SEMI ->
        "SEMI"
    | SHL ->
        "SHL"
    | SHR ->
        "SHR"
    | STAR ->
        "STAR"
    | STRING _ ->
        "STRING"
    | TARRAY _ ->
        "TARRAY"
    | TBOOL ->
        "TBOOL"
    | TILDE ->
        "TILDE"
    | TINT ->
        "TINT"
    | TRUE ->
        "TRUE"
    | TSTRING ->
        "TSTRING"
    | TVOID ->
        "TVOID"
    | VAR ->
        "VAR"
    | WHILE ->
        "WHILE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_190 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_stmt_top =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let s = _v in
          let _v = _menhir_action_86 s in
          MenhirBox_stmt_top _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_184 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_prog =
    fun _menhir_stack _v ->
      let p = _v in
      let _v = _menhir_action_69 p in
      MenhirBox_prog _v
  
  let rec _menhir_run_187 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_decl -> _ -> _menhir_box_prog =
    fun _menhir_stack _v ->
      let MenhirCell1_decl (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_54 x xs in
      _menhir_goto_list_decl_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_decl_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState186 ->
          _menhir_run_187 _menhir_stack _v
      | MenhirState078 ->
          _menhir_run_184 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_136_spec_188 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_stmt_top =
    fun _menhir_stack _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_81 ifs in
      _menhir_run_190 _menhir_stack _v _tok
  
  let rec _menhir_run_001 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NULL ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _endpos__2_) = (_startpos, _endpos) in
          let _v = _menhir_action_15 _endpos__2_ _startpos__1_ in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__2_ _startpos__1_ _v _menhir_s _tok
      | LBRACKET ->
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_89 () in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_exp : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState123 ->
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState142 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState188 ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState146 ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState125 ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState133 ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState107 ->
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState100 ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState094 ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState005 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState011 ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState014 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState018 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState038 ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState036 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState030 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState138 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState013 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState025 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_145 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let x = _v in
          let _v = _menhir_action_66 x in
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_030 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState030 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState030 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState030 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState030 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState030 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState030 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState030 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | _ ->
          _eRR ()
  
  and _menhir_run_031 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BANGEQ | BOR | COMMA | DASH | EOF | EQEQ | G | GEQ | L | LEQ | OR | PLUS | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR | STAR ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_19 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_025 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState025 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState025 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState025 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState025 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState025 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState025 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState025 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
      | RPAREN ->
          let _v = _menhir_action_57 () in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
          | TRUE ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_1, _startpos_0) in
              let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState065 _tok
          | TINT ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_3 in
              let _v = _menhir_action_87 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState065 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
          | TBOOL ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_5 in
              let _v = _menhir_action_88 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState065 _tok
          | STRING _v_7 ->
              let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_9 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos_9, _startpos_8, _v_7) in
              let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState065 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
          | INT _v_11 ->
              let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_13 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_13, _startpos_12, _v_11) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState065 _tok
          | IDENT _v_15 ->
              let _startpos_16 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_17 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos_17, _startpos_16, _v_15) in
              let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState065 _tok
          | FALSE ->
              let _startpos_19 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_20 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_20, _startpos_19) in
              let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState065 _tok
          | DASH ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
          | BANG ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
          | _ ->
              _eRR ())
      | BOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACE | RPAREN ->
          let x = _v in
          let _v = _menhir_action_70 x in
          _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState034 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState034 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState034 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState034 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState034 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState034 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState034 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BANGEQ | BOR | COMMA | EOF | EQEQ | G | GEQ | L | LEQ | OR | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_24 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState036 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState036 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState036 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState036 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState036 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState036 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState036 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | _ ->
          _eRR ()
  
  and _menhir_run_037 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BANGEQ | BOR | COMMA | DASH | EOF | EQEQ | G | GEQ | L | LEQ | OR | PLUS | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_17 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState032 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState032 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState032 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState032 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState032 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState032 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState032 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | _ ->
          _eRR ()
  
  and _menhir_run_033 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
          let (i, _endpos__4_) = (_v, _endpos_0) in
          let _v = _menhir_action_37 _endpos__4_ _startpos_e_ e i in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e_ _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState040 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState040 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState040 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState040 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState040 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState040 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState040 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BANGEQ | BOR | COMMA | EOF | EQEQ | G | GEQ | L | LEQ | OR | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_22 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_DASH (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState038 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState038 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState038 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState038 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState038 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState038 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState038 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_DASH as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BANGEQ | BOR | COMMA | DASH | EOF | EQEQ | G | GEQ | L | LEQ | OR | PLUS | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR ->
          let MenhirCell0_DASH (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_18 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_020 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RBRACKET ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | NULL ->
                  let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__2_, _startpos_t_, t) = (_endpos_0, _startpos, _v) in
                  let _v = _menhir_action_16 _endpos__2_ _startpos_t_ t in
                  _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__2_ _startpos_t_ _v _menhir_s _tok
              | LBRACKET ->
                  let (_startpos_t_, t) = (_startpos, _v) in
                  let _v = _menhir_action_90 t in
                  _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_ty : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState186 ->
          _menhir_run_177 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState078 ->
          _menhir_run_177 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState153 ->
          _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState173 ->
          _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState162 ->
          _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState158 ->
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState179 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState188 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState146 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState142 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState138 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState133 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState125 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState123 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState107 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState100 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState094 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState005 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState011 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState013 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState014 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState018 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState038 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState036 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState030 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState025 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_177 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | IDENT _v_0 ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0, _startpos_1, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_2) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_3 in
                  let _v = _menhir_action_89 () in
                  _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState179 _tok
              | TINT ->
                  let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_5 in
                  let _v = _menhir_action_87 () in
                  _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState179 _tok
              | TBOOL ->
                  let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_7 in
                  let _v = _menhir_action_88 () in
                  _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState179 _tok
              | RPAREN ->
                  let _v = _menhir_action_61 () in
                  _menhir_run_089_spec_179 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_ty (_menhir_stack, _menhir_s, t, _startpos_t_) = _menhir_stack in
          let _v = _menhir_action_90 t in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_082 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer
      | IDENT _v_0 ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | COMMA ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0, _startpos_1, _endpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_2 in
                  let _v = _menhir_action_89 () in
                  _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState086 _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_87 () in
                  _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState086 _tok
              | TBOOL ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_6 in
                  let _v = _menhir_action_88 () in
                  _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState086 _tok
              | _ ->
                  _eRR ())
          | RPAREN ->
              let (x, y) = (_v, _v_0) in
              let _v = _menhir_action_74 x y in
              _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState179 ->
          _menhir_run_088_spec_179 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState081 ->
          _menhir_run_088_spec_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState086 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_088_spec_179 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_62 x in
      _menhir_run_089_spec_179 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_089_spec_179 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let xs = _v in
      let _v = _menhir_action_03 xs in
      let _menhir_s = MenhirState179 in
      let _menhir_stack = MenhirCell1_arglist (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState181
      | _ ->
          _eRR ()
  
  and _menhir_run_092 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | VAR ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState092 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState092 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState092 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState092 _tok
      | RETURN ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState092 _tok
      | IF ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | IDENT _v ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState092
      | FOR ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState092 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | RBRACE ->
          let _v = _menhir_action_55 () in
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_093 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_WHILE (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
              let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState094 _tok
          | TINT ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_2 in
              let _v = _menhir_action_87 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState094 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
          | TBOOL ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_3 in
              let _v = _menhir_action_88 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState094 _tok
          | STRING _v ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_4, _v) in
              let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState094 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
          | INT _v ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_5, _v) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState094 _tok
          | IDENT _v ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_6, _v) in
              let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState094 _tok
          | FALSE ->
              let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_7) in
              let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState094 _tok
          | DASH ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
          | BANG ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_095 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_WHILE _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState042 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState042 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState042 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState042 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState042 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState042 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState042 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BANGEQ | BOR | COMMA | EOF | EQEQ | G | GEQ | L | LEQ | OR | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_23 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_005 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_TILDE (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState005 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState005 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState005 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState005 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState005 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState005 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState005 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | _ ->
          _eRR ()
  
  and _menhir_run_074 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_TILDE as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BANGEQ | BOR | COMMA | DASH | EOF | EQEQ | G | GEQ | L | LEQ | OR | PLUS | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR | STAR ->
          let MenhirCell1_TILDE (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_35 _endpos_e_ _startpos__1_ e in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_008 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_89 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState008 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState008 _tok
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_88 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState008 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_010 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_NEW as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
          | TRUE ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
              let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
              _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState011 _tok
          | TINT ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_2 in
              let _v = _menhir_action_87 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState011 _tok
          | TILDE ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
          | TBOOL ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_4 in
              let _v = _menhir_action_88 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState011 _tok
          | STRING _v_6 ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_7, _v_6) in
              let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
              _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState011 _tok
          | RBRACKET ->
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LBRACE ->
                  let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
                  let _menhir_stack = MenhirCell1_RBRACKET (_menhir_stack, MenhirState011, _endpos) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TSTRING ->
                      _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | TRUE ->
                      let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos__1_, _startpos__1_) = (_endpos_10, _startpos_9) in
                      let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
                      _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState013 _tok
                  | TINT ->
                      let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _startpos__1_ = _startpos_12 in
                      let _v = _menhir_action_87 () in
                      _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState013 _tok
                  | TILDE ->
                      _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | TBOOL ->
                      let _startpos_14 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _startpos__1_ = _startpos_14 in
                      let _v = _menhir_action_88 () in
                      _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState013 _tok
                  | STRING _v_16 ->
                      let _startpos_17 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_18 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos_s_, _startpos_s_, s) = (_endpos_18, _startpos_17, _v_16) in
                      let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
                      _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState013 _tok
                  | NEW ->
                      _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | LPAREN ->
                      _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | INT _v_20 ->
                      let _startpos_21 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_22 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos_i_, _startpos_i_, i) = (_endpos_22, _startpos_21, _v_20) in
                      let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
                      _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState013 _tok
                  | IDENT _v_24 ->
                      let _startpos_25 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_26 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos_id_, _startpos_id_, id) = (_endpos_26, _startpos_25, _v_24) in
                      let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
                      _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState013 _tok
                  | FALSE ->
                      let _startpos_28 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_29 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos__1_, _startpos__1_) = (_endpos_29, _startpos_28) in
                      let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
                      _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState013 _tok
                  | DASH ->
                      _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | BANG ->
                      _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | RBRACE ->
                      let _v = _menhir_action_57 () in
                      _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | _ ->
                      _eRR ())
              | LBRACKET ->
                  let (_startpos_t_, t) = (_startpos, _v) in
                  let _v = _menhir_action_90 t in
                  _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | NEW ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
          | LPAREN ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
          | INT _v_32 ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _startpos_33 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_33, _v_32) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState011 _tok
          | IDENT _v_35 ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _startpos_36 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_36, _v_35) in
              let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
              _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState011 _tok
          | FALSE ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _startpos_38 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_38) in
              let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
              _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState011 _tok
          | DASH ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
          | BANG ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_072 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_ty as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_ty (_menhir_stack, _, t, _) = _menhir_stack in
          let MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e, _endpos__5_) = (_v, _endpos_0) in
          let _v = _menhir_action_40 _endpos__5_ _startpos__1_ e t in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__5_ _startpos__1_ _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState045 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState045 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState045 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState045 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState045 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState045 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState045 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND | BOR | COMMA | EOF | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_25 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState047 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState047 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState047 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState047 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState047 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState047 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState047 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BANGEQ | BOR | COMMA | EOF | EQEQ | G | GEQ | L | LEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_30 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_014 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState014 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState014 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState014 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState014 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState014 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState014 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState014 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | _ ->
          _eRR ()
  
  and _menhir_run_068 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e, _endpos__3_) = (_v, _endpos_0) in
          let _v = _menhir_action_39 e in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _startpos__1_ _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState049 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState049 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState049 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState049 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState049 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState049 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState049 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BANGEQ | BOR | COMMA | EOF | EQEQ | G | GEQ | L | LEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_29 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_018 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_DASH (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState018 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState018 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState018 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState018 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState018 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState018 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState018 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_DASH as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BANGEQ | BOR | COMMA | DASH | EOF | EQEQ | G | GEQ | L | LEQ | OR | PLUS | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR ->
          let MenhirCell1_DASH (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_33 _endpos_e_ _startpos__1_ e in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_019 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_BANG (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState019 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState019 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState019 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState019 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState019 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState019 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState019 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | _ ->
          _eRR ()
  
  and _menhir_run_024 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_BANG as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BANGEQ | BOR | COMMA | DASH | EOF | EQEQ | G | GEQ | L | LEQ | OR | PLUS | RBRACE | RBRACKET | RPAREN | SAR | SEMI | SHL | SHR | STAR ->
          let MenhirCell1_BANG (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_34 _endpos_e_ _startpos__1_ e in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState051 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState051 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState051 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState051 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState051 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState051 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState051 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | _ ->
          _eRR ()
  
  and _menhir_run_052 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BANGEQ | BOR | COMMA | EOF | EQEQ | G | GEQ | L | LEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_28 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState053 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState053 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState053 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState053 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState053 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState053 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState053 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BANGEQ | BOR | COMMA | EOF | EQEQ | G | GEQ | L | LEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_27 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState055 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState055 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState055 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState055 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState055 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState055 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState055 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | _ ->
          _eRR ()
  
  and _menhir_run_056 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BANGEQ | BOR | COMMA | EOF | EQEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_20 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState061 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState061 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState061 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState061 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState061 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState061 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState061 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | _ ->
          _eRR ()
  
  and _menhir_run_062 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR | COMMA | EOF | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_32 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState057 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState057 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState057 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState057 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState057 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState057 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState057 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BANGEQ | BOR | COMMA | EOF | EQEQ | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_21 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState063 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState063 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState063 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState063 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState063 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState063 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState063 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND | BOR | COMMA | EOF | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_31 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState059 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState059 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState059 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState059 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState059 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState059 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState059 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BAND | BOR | COMMA | EOF | OR | RBRACE | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_26 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_ty, ttv_result) _menhir_cell1_RBRACKET -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RBRACE ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_RBRACKET (_menhir_stack, _, _) = _menhir_stack in
          let MenhirCell1_ty (_menhir_stack, _, t, _) = _menhir_stack in
          let MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (xs, _endpos__7_) = (_v, _endpos) in
          let _v = _menhir_action_41 _endpos__7_ _startpos__1_ t xs in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__7_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_098 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_VAR (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos_0, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EQ ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
              | TRUE ->
                  let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos_2, _startpos_1) in
                  let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
                  _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState100 _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_87 () in
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState100 _tok
              | TILDE ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
              | TBOOL ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_6 in
                  let _v = _menhir_action_88 () in
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState100 _tok
              | STRING _v_8 ->
                  let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_s_, _startpos_s_, s) = (_endpos_10, _startpos_9, _v_8) in
                  let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
                  _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState100 _tok
              | NEW ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
              | LPAREN ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
              | INT _v_12 ->
                  let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_14 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_i_, _startpos_i_, i) = (_endpos_14, _startpos_13, _v_12) in
                  let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
                  _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState100 _tok
              | IDENT _v_16 ->
                  let _startpos_17 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_18 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_id_, _startpos_id_, id) = (_endpos_18, _startpos_17, _v_16) in
                  let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
                  _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState100 _tok
              | FALSE ->
                  let _startpos_20 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_21 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos_21, _startpos_20) in
                  let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
                  _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState100 _tok
              | DASH ->
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
              | BANG ->
                  _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_101 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_VAR _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | SEMI ->
          let MenhirCell0_IDENT (_menhir_stack, id, _, _) = _menhir_stack in
          let MenhirCell1_VAR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let init = _v in
          let _v = _menhir_action_91 id init in
          _menhir_goto_vdecl _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_vdecl : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState188 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState146 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState125 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState119 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState117 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_126 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__2_, _startpos_d_, d) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_78 _endpos__2_ _startpos_d_ d in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_stmt : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState188 ->
          _menhir_run_190 _menhir_stack _v _tok
      | MenhirState146 ->
          _menhir_run_146 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_146 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState125 ->
          _menhir_run_128_spec_125 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_146 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | VAR ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState146 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState146 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState146 _tok
      | STRING _v_3 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v_3) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState146 _tok
      | RETURN ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | INT _v_5 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v_5) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState146 _tok
      | IF ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | IDENT _v_7 ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 MenhirState146
      | FOR ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState146 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
      | RBRACE ->
          let _v = _menhir_action_55 () in
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_137 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_2, _startpos_1) in
              let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState138 _tok
          | TINT ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_4 in
              let _v = _menhir_action_87 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState138 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | TBOOL ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_6 in
              let _v = _menhir_action_88 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState138 _tok
          | STRING _v_8 ->
              let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos_10, _startpos_9, _v_8) in
              let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState138 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | INT _v_12 ->
              let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_14 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_14, _startpos_13, _v_12) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState138 _tok
          | IDENT _v_16 ->
              let _startpos_17 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_18 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos_18, _startpos_17, _v_16) in
              let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState138 _tok
          | FALSE ->
              let _startpos_20 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_21 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_21, _startpos_20) in
              let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState138 _tok
          | DASH ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | BANG ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | RPAREN ->
              let _v = _menhir_action_57 () in
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | LEQ ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
          | TRUE ->
              let _startpos_24 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_25 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_25, _startpos_24) in
              let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
              _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState142 _tok
          | TINT ->
              let _startpos_27 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_27 in
              let _v = _menhir_action_87 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState142 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
          | TBOOL ->
              let _startpos_29 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_29 in
              let _v = _menhir_action_88 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState142 _tok
          | STRING _v_31 ->
              let _startpos_32 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_33 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos_33, _startpos_32, _v_31) in
              let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
              _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState142 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
          | INT _v_35 ->
              let _startpos_36 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_37 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_37, _startpos_36, _v_35) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState142 _tok
          | IDENT _v_39 ->
              let _startpos_40 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_41 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos_41, _startpos_40, _v_39) in
              let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
              _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState142 _tok
          | FALSE ->
              let _startpos_43 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_44 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_44, _startpos_43) in
              let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
              _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState142 _tok
          | DASH ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
          | BANG ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
          | _ ->
              _eRR ())
      | L ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_139 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SEMI ->
              let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
              let (xs, _endpos__5_) = (_v, _endpos_0) in
              let _v = _menhir_action_80 _endpos__5_ _startpos_e_ e xs in
              _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | AND | BAND | BANGEQ | BOR | DASH | EQEQ | G | GEQ | L | LBRACKET | LEQ | LPAREN | OR | PLUS | SAR | SHL | SHR | STAR ->
              let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
              let (xs, _endpos__4_) = (_v, _endpos) in
              let _v = _menhir_action_38 _endpos__4_ _startpos_e_ e xs in
              _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e_ _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_143 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | AND | BAND | BANGEQ | BOR | DASH | EQEQ | G | GEQ | L | LBRACKET | LEQ | LPAREN | OR | PLUS | SAR | SHL | SHR | STAR ->
              let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
              let (i, _endpos__4_) = (_v, _endpos_0) in
              let _v = _menhir_action_37 _endpos__4_ _startpos_e_ e i in
              _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e_ _v _menhir_s _tok
          | EQ ->
              let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
              let (i, _endpos__4_) = (_v, _endpos_0) in
              let _v = _menhir_action_52 _endpos__4_ _startpos_e_ e i in
              _menhir_goto_lhs _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e_ _v _menhir_s
          | _ ->
              _eRR ())
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_goto_lhs : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s ->
      let _menhir_stack = MenhirCell1_lhs (_menhir_stack, _menhir_s, _v, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState133 _tok
      | TINT ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState133 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | TBOOL ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_4 in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState133 _tok
      | STRING _v_6 ->
          let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_7, _v_6) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState133 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | INT _v_9 ->
          let _startpos_10 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_10, _v_9) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState133 _tok
      | IDENT _v_12 ->
          let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_13, _v_12) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState133 _tok
      | FALSE ->
          let _startpos_15 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_15) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState133 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | _ ->
          _eRR ()
  
  and _menhir_run_134 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_lhs as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_lhs (_menhir_stack, _menhir_s, p, _startpos_p_) = _menhir_stack in
          let (e, _endpos__4_) = (_v, _endpos_0) in
          let _v = _menhir_action_79 _endpos__4_ _startpos_p_ e p in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_102 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | TRUE ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState102 _tok
      | TINT ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState102 _tok
      | TILDE ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | TBOOL ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState102 _tok
      | STRING _v ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState102 _tok
      | SEMI ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _endpos__2_) = (_startpos, _endpos) in
          let _v = _menhir_action_82 _endpos__2_ _startpos__1_ in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | NEW ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | LPAREN ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | INT _v ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState102 _tok
      | IDENT _v ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState102 _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState102 _tok
      | DASH ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | BANG ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | _ ->
          _eRR ()
  
  and _menhir_run_104 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_RETURN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e, _endpos__3_) = (_v, _endpos_0) in
          let _v = _menhir_action_83 _endpos__3_ _startpos__1_ e in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_106 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
              let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
              _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState107 _tok
          | TINT ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_2 in
              let _v = _menhir_action_87 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState107 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
          | TBOOL ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_3 in
              let _v = _menhir_action_88 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState107 _tok
          | STRING _v ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_4, _v) in
              let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
              _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState107 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
          | INT _v ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_5, _v) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState107 _tok
          | IDENT _v ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_6, _v) in
              let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
              _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState107 _tok
          | FALSE ->
              let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_7) in
              let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
              _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState107 _tok
          | DASH ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
          | BANG ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_108 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_115 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | AND | BAND | BANGEQ | BOR | DASH | EQEQ | G | GEQ | L | LBRACKET | LEQ | LPAREN | OR | PLUS | SAR | SHL | SHR | STAR ->
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v _menhir_s _tok
      | EQ ->
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_51 _endpos_id_ _startpos_id_ id in
          _menhir_goto_lhs _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_id_ _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_116 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_FOR (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR ->
              _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
          | SEMI ->
              let _v = _menhir_action_63 () in
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState117
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_122 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_loption_separated_nonempty_list_COMMA_vdecl__ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_SEMI (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_0, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState123 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState123 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState123 _tok
      | STRING _v_4 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_5 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos_5, _startpos, _v_4) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState123 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | INT _v_7 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_8 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos_8, _startpos, _v_7) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState123 _tok
      | IDENT _v_10 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_11 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos_11, _startpos, _v_10) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState123 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_13 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_13, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState123 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | SEMI ->
          let _v = _menhir_action_65 () in
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState123
      | _ ->
          _eRR ()
  
  and _menhir_run_124 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_option_exp_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_SEMI (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | VAR ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_0, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState125 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState125 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState125 _tok
      | STRING _v_4 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_5 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos_5, _startpos, _v_4) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState125 _tok
      | RETURN ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | INT _v_7 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_8 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos_8, _startpos, _v_7) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState125 _tok
      | IF ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | IDENT _v_10 ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v_10 MenhirState125
      | FOR ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_11 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_11, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState125 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | RPAREN ->
          let _v = _menhir_action_67 () in
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState125 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_129 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_option_exp_ _menhir_cell0_SEMI as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_option_stmt_ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_147 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_stmt -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_stmt (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_56 x xs in
      _menhir_goto_list_stmt_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_stmt_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState092 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState146 ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_148 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LBRACE -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LBRACE (_menhir_stack, _menhir_s) = _menhir_stack in
      let (_endpos__3_, stmts) = (_endpos, _v) in
      let _v = _menhir_action_04 stmts in
      _menhir_goto_block _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _v _menhir_s _tok
  
  and _menhir_goto_block : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState181 ->
          _menhir_run_182 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState091 ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState130 ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState111 ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState109 ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState096 ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_182 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_arglist (_menhir_stack, _, args) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, fname, _, _) = _menhir_stack in
      let MenhirCell1_ty (_menhir_stack, _menhir_s, t, _startpos_t_) = _menhir_stack in
      let (_endpos_body_, body) = (_endpos, _v) in
      let _v = _menhir_action_07 _endpos_body_ _startpos_t_ args body fname t in
      _menhir_goto_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_decl : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_decl (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TVOID ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState186
      | TSTRING ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_89 () in
          _menhir_run_177 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState186 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_177 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState186 _tok
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_177 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState186 _tok
      | GLOBAL ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState186
      | EOF ->
          let _v = _menhir_action_53 () in
          _menhir_run_187 _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_079 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_TVOID (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos_0, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_1) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_2 in
                  let _v = _menhir_action_89 () in
                  _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState081 _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_87 () in
                  _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState081 _tok
              | TBOOL ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_6 in
                  let _v = _menhir_action_88 () in
                  _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState081 _tok
              | RPAREN ->
                  let _v = _menhir_action_61 () in
                  _menhir_run_089_spec_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_089_spec_081 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let xs = _v in
      let _v = _menhir_action_03 xs in
      let _menhir_s = MenhirState081 in
      let _menhir_stack = MenhirCell1_arglist (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | _ ->
          _eRR ()
  
  and _menhir_run_151 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_GLOBAL (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos_0, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EQ ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
              | TRUE ->
                  let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos_2, _startpos_1) in
                  let _v = _menhir_action_47 _endpos__1_ _startpos__1_ in
                  _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_87 () in
                  _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState153 _tok
              | TBOOL ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_6 in
                  let _v = _menhir_action_88 () in
                  _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState153 _tok
              | STRING _v_8 ->
                  let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_s_, _startpos_s_, s) = (_endpos_10, _startpos_9, _v_8) in
                  let _v = _menhir_action_46 _endpos_s_ _startpos_s_ s in
                  _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | NEW ->
                  _menhir_run_158 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
              | INT _v_12 ->
                  let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_14 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_i_, _startpos_i_, i) = (_endpos_14, _startpos_13, _v_12) in
                  let _v = _menhir_action_45 _endpos_i_ _startpos_i_ i in
                  _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | FALSE ->
                  let _startpos_16 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_17 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos_17, _startpos_16) in
                  let _v = _menhir_action_48 _endpos__1_ _startpos__1_ in
                  _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_154 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NULL ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _endpos__2_) = (_startpos, _endpos) in
          let _v = _menhir_action_43 _endpos__2_ _startpos__1_ in
          _menhir_goto_gexp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | LBRACKET ->
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_89 () in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_gexp : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState153 ->
          _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState173 ->
          _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState162 ->
          _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_175 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, name, _, _) = _menhir_stack in
          let MenhirCell1_GLOBAL (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (init, _endpos__5_) = (_v, _endpos) in
          let _v = _menhir_action_05 _endpos__5_ _startpos__1_ init name in
          _menhir_goto_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_172 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_gexp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState173
          | TRUE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
              let _v = _menhir_action_47 _endpos__1_ _startpos__1_ in
              _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState173 _tok
          | TINT ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_87 () in
              _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState173 _tok
          | TBOOL ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_88 () in
              _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState173 _tok
          | STRING _v_3 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v_3) in
              let _v = _menhir_action_46 _endpos_s_ _startpos_s_ s in
              _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState173 _tok
          | NEW ->
              _menhir_run_158 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState173
          | INT _v_5 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v_5) in
              let _v = _menhir_action_45 _endpos_i_ _startpos_i_ i in
              _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState173 _tok
          | FALSE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
              let _v = _menhir_action_48 _endpos__1_ _startpos__1_ in
              _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState173 _tok
          | _ ->
              _eRR ())
      | RBRACE ->
          let x = _v in
          let _v = _menhir_action_72 x in
          _menhir_goto_separated_nonempty_list_COMMA_gexp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_165 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RBRACKET ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | NULL ->
                  let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__2_, _startpos_t_, t) = (_endpos_0, _startpos, _v) in
                  let _v = _menhir_action_44 _endpos__2_ _startpos_t_ t in
                  _menhir_goto_gexp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | LBRACKET ->
                  let (_startpos_t_, t) = (_startpos, _v) in
                  let _v = _menhir_action_90 t in
                  _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_158 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_89 () in
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState158 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_87 () in
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState158 _tok
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_88 () in
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState158 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_159 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_NEW as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RBRACKET ->
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LBRACE ->
                  let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
                  let _menhir_stack = MenhirCell1_RBRACKET (_menhir_stack, MenhirState160, _endpos) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TSTRING ->
                      _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | TRUE ->
                      let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos__1_, _startpos__1_) = (_endpos_1, _startpos_0) in
                      let _v = _menhir_action_47 _endpos__1_ _startpos__1_ in
                      _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState162 _tok
                  | TINT ->
                      let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _startpos__1_ = _startpos_3 in
                      let _v = _menhir_action_87 () in
                      _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState162 _tok
                  | TBOOL ->
                      let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _startpos__1_ = _startpos_5 in
                      let _v = _menhir_action_88 () in
                      _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState162 _tok
                  | STRING _v_7 ->
                      let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_9 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos_s_, _startpos_s_, s) = (_endpos_9, _startpos_8, _v_7) in
                      let _v = _menhir_action_46 _endpos_s_ _startpos_s_ s in
                      _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState162 _tok
                  | NEW ->
                      _menhir_run_158 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState162
                  | INT _v_11 ->
                      let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_13 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos_i_, _startpos_i_, i) = (_endpos_13, _startpos_12, _v_11) in
                      let _v = _menhir_action_45 _endpos_i_ _startpos_i_ i in
                      _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState162 _tok
                  | FALSE ->
                      let _startpos_15 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_16 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos__1_, _startpos__1_) = (_endpos_16, _startpos_15) in
                      let _v = _menhir_action_48 _endpos__1_ _startpos__1_ in
                      _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState162 _tok
                  | RBRACE ->
                      let _v = _menhir_action_59 () in
                      _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer _v
                  | _ ->
                      _eRR ())
              | LBRACKET ->
                  let (_startpos_t_, t) = (_startpos, _v) in
                  let _v = _menhir_action_90 t in
                  _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_170 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_cell1_ty, _menhir_box_prog) _menhir_cell1_RBRACKET -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_RBRACKET (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell1_ty (_menhir_stack, _, t, _) = _menhir_stack in
      let MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (xs, _endpos__7_) = (_v, _endpos) in
      let _v = _menhir_action_49 _endpos__7_ _startpos__1_ t xs in
      _menhir_goto_gexp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_separated_nonempty_list_COMMA_gexp_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState173 ->
          _menhir_run_174 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState162 ->
          _menhir_run_169_spec_162 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_174 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_gexp -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_gexp (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_73 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_gexp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_169_spec_162 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_cell1_ty, _menhir_box_prog) _menhir_cell1_RBRACKET -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_60 x in
      _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_150 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_arglist (_menhir_stack, _, args) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, fname, _, _) = _menhir_stack in
      let MenhirCell1_TVOID (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_body_, body) = (_endpos, _v) in
      let _v = _menhir_action_06 _endpos_body_ _startpos__1_ args body fname in
      _menhir_goto_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_131 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_option_exp_ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_option_stmt_ _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_option_stmt_ (_menhir_stack, _, stmt) = _menhir_stack in
      let MenhirCell0_SEMI (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_option_exp_ (_menhir_stack, _, exp_opt) = _menhir_stack in
      let MenhirCell0_SEMI (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_loption_separated_nonempty_list_COMMA_vdecl__ (_menhir_stack, _, xs) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_FOR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_85 _endpos_b_ _startpos__1_ b exp_opt stmt xs in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_113 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN, ttv_result) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_09 b in
      _menhir_goto_else_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_b_ _v _tok
  
  and _menhir_goto_else_stmt : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN, ttv_result) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_block (_menhir_stack, _, b1, _) = _menhir_stack in
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_exp (_menhir_stack, _, e, _, _) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b2_, b2) = (_endpos, _v) in
      let _v = _menhir_action_50 _endpos_b2_ _startpos__1_ b1 b2 e in
      _menhir_goto_if_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_b2_ _v _menhir_s _tok
  
  and _menhir_goto_if_stmt : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState188 ->
          _menhir_run_136_spec_188 _menhir_stack _v _tok
      | MenhirState092 ->
          _menhir_run_136_spec_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState146 ->
          _menhir_run_136_spec_146 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState125 ->
          _menhir_run_136_spec_125 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState111 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_136_spec_092 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_81 ifs in
      _menhir_run_146 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState092 _tok
  
  and _menhir_run_136_spec_146 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_81 ifs in
      _menhir_run_146 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState146 _tok
  
  and _menhir_run_136_spec_125 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_option_exp_ _menhir_cell0_SEMI -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_81 ifs in
      _menhir_run_128_spec_125 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_128_spec_125 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_option_exp_ _menhir_cell0_SEMI -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_68 x in
      _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState125 _tok
  
  and _menhir_run_112 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN, ttv_result) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let (_endpos_ifs_, ifs) = (_endpos, _v) in
      let _v = _menhir_action_10 ifs in
      _menhir_goto_else_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_ifs_ _v _tok
  
  and _menhir_run_110 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_block (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
          | IF ->
              _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
          | _ ->
              _eRR ())
      | BANG | DASH | EOF | FALSE | FOR | IDENT _ | IF | INT _ | LPAREN | NEW | RBRACE | RETURN | RPAREN | STRING _ | TBOOL | TILDE | TINT | TRUE | TSTRING | VAR | WHILE ->
          let _v = _menhir_action_08 () in
          _menhir_goto_else_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_097 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_WHILE _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_exp (_menhir_stack, _, e, _, _) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_WHILE (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_84 _endpos_b_ _startpos__1_ b e in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_118 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_vdecl (_menhir_stack, _menhir_s, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR ->
              _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | _ ->
              _eRR ())
      | SEMI ->
          let x = _v in
          let _v = _menhir_action_76 x in
          _menhir_goto_separated_nonempty_list_COMMA_vdecl_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_vdecl_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState117 ->
          _menhir_run_121_spec_117 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState119 ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_121_spec_117 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_64 x in
      _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState117
  
  and _menhir_run_120 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_vdecl -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_vdecl (_menhir_stack, _menhir_s, x, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_77 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_vdecl_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_088_spec_081 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_62 x in
      _menhir_run_089_spec_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_087 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell0_IDENT (_menhir_stack, y, _, _) = _menhir_stack in
      let MenhirCell1_ty (_menhir_stack, _menhir_s, x, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_75 x xs y in
      _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_separated_nonempty_list_COMMA_exp_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState065 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState138 ->
          _menhir_run_026_spec_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState013 ->
          _menhir_run_026_spec_013 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState025 ->
          _menhir_run_026_spec_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_066 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_exp (_menhir_stack, _menhir_s, x, _, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_71 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_026_spec_138 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_58 x in
      _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_026_spec_013 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_ty, ttv_result) _menhir_cell1_RBRACKET -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_58 x in
      _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_026_spec_025 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_58 x in
      _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_027 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
          let (xs, _endpos__4_) = (_v, _endpos) in
          let _v = _menhir_action_38 _endpos__4_ _startpos_e_ e xs in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_076 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_exp_top) _menhir_state -> _ -> _menhir_box_exp_top =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SHL ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer
      | L ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | G ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EOF ->
          let e = _v in
          let _v = _menhir_action_42 e in
          MenhirBox_exp_top _v
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BOR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  let rec _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_exp_top =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState000 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState000 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState000 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState000 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState000 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState000 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState000 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | _ ->
          _eRR ()
  
  let rec _menhir_run_078 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TVOID ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | TSTRING ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_89 () in
          _menhir_run_177 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState078 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_177 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState078 _tok
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_177 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState078 _tok
      | GLOBAL ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | EOF ->
          let _v = _menhir_action_53 () in
          _menhir_run_184 _menhir_stack _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_188 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_stmt_top =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState188
      | VAR ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState188
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState188
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState188 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_87 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState188 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState188
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_88 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState188 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState188 _tok
      | RETURN ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState188
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState188
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState188
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState188 _tok
      | IF ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState188
      | IDENT _v ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState188
      | FOR ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState188
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState188 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState188
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState188
      | _ ->
          _eRR ()
  
end

let stmt_top =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_stmt_top v = _menhir_run_188 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let prog =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_prog v = _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let exp_top =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_exp_top v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
