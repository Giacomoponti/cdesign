
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
    | STRING of (
# 13 "parser.mly"
       (string)
# 23 "parser.ml"
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
# 46 "parser.ml"
  )
    | IF
    | IDENT of (
# 14 "parser.mly"
       (string)
# 52 "parser.ml"
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
# 69 "parser.ml"
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


# 88 "parser.ml"

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

  | MenhirState011 : ((('s, 'r) _menhir_cell1_NEW, 'r) _menhir_cell1_TINT, 'r) _menhir_state
    (** State 011.
        Stack shape : NEW TINT.
        Start symbol: <undetermined>. *)

  | MenhirState013 : (((('s, 'r) _menhir_cell1_NEW, 'r) _menhir_cell1_TINT, 'r) _menhir_cell1_RBRACKET, 'r) _menhir_state
    (** State 013.
        Stack shape : NEW TINT RBRACKET.
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

  | MenhirState075 : ((('s, 'r) _menhir_cell1_NEW, 'r) _menhir_cell1_TBOOL, 'r) _menhir_state
    (** State 075.
        Stack shape : NEW TBOOL.
        Start symbol: <undetermined>. *)

  | MenhirState077 : (((('s, 'r) _menhir_cell1_NEW, 'r) _menhir_cell1_TBOOL, 'r) _menhir_cell1_RBRACKET, 'r) _menhir_state
    (** State 077.
        Stack shape : NEW TBOOL RBRACKET.
        Start symbol: <undetermined>. *)

  | MenhirState085 : ((('s, 'r) _menhir_cell1_NEW, 'r) _menhir_cell1_ty _menhir_cell0_RBRACKET, 'r) _menhir_state
    (** State 085.
        Stack shape : NEW ty RBRACKET.
        Start symbol: <undetermined>. *)

  | MenhirState092 : ('s, _menhir_box_prog) _menhir_state
    (** State 092.
        Stack shape : .
        Start symbol: prog. *)

  | MenhirState095 : (('s, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_state
    (** State 095.
        Stack shape : TVOID IDENT LPAREN.
        Start symbol: prog. *)

  | MenhirState100 : (('s, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT, _menhir_box_prog) _menhir_state
    (** State 100.
        Stack shape : ty IDENT.
        Start symbol: prog. *)

  | MenhirState105 : ((('s, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN, _menhir_box_prog) _menhir_state
    (** State 105.
        Stack shape : TVOID IDENT LPAREN arglist RPAREN.
        Start symbol: prog. *)

  | MenhirState106 : (('s, 'r) _menhir_cell1_LBRACE, 'r) _menhir_state
    (** State 106.
        Stack shape : LBRACE.
        Start symbol: <undetermined>. *)

  | MenhirState108 : (('s, 'r) _menhir_cell1_WHILE _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 108.
        Stack shape : WHILE LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState110 : ((('s, 'r) _menhir_cell1_WHILE _menhir_cell0_LPAREN, 'r) _menhir_cell1_exp _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 110.
        Stack shape : WHILE LPAREN exp RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState114 : (('s, 'r) _menhir_cell1_VAR _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 114.
        Stack shape : VAR IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState116 : (('s, 'r) _menhir_cell1_RETURN, 'r) _menhir_state
    (** State 116.
        Stack shape : RETURN.
        Start symbol: <undetermined>. *)

  | MenhirState121 : (('s, 'r) _menhir_cell1_IF _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 121.
        Stack shape : IF LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState123 : ((('s, 'r) _menhir_cell1_IF _menhir_cell0_LPAREN, 'r) _menhir_cell1_exp _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 123.
        Stack shape : IF LPAREN exp RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState125 : (((('s, 'r) _menhir_cell1_IF _menhir_cell0_LPAREN, 'r) _menhir_cell1_exp _menhir_cell0_RPAREN, 'r) _menhir_cell1_block, 'r) _menhir_state
    (** State 125.
        Stack shape : IF LPAREN exp RPAREN block.
        Start symbol: <undetermined>. *)

  | MenhirState131 : (('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 131.
        Stack shape : FOR LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState133 : (('s, 'r) _menhir_cell1_vdecl, 'r) _menhir_state
    (** State 133.
        Stack shape : vdecl.
        Start symbol: <undetermined>. *)

  | MenhirState137 : ((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, 'r) _menhir_state
    (** State 137.
        Stack shape : FOR LPAREN loption(separated_nonempty_list(COMMA,vdecl)) SEMI.
        Start symbol: <undetermined>. *)

  | MenhirState139 : (((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, 'r) _menhir_cell1_option_exp_ _menhir_cell0_SEMI, 'r) _menhir_state
    (** State 139.
        Stack shape : FOR LPAREN loption(separated_nonempty_list(COMMA,vdecl)) SEMI option(exp) SEMI.
        Start symbol: <undetermined>. *)

  | MenhirState144 : ((((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, 'r) _menhir_cell1_option_exp_ _menhir_cell0_SEMI, 'r) _menhir_cell1_option_stmt_ _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 144.
        Stack shape : FOR LPAREN loption(separated_nonempty_list(COMMA,vdecl)) SEMI option(exp) SEMI option(stmt) RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState147 : (('s, 'r) _menhir_cell1_lhs, 'r) _menhir_state
    (** State 147.
        Stack shape : lhs.
        Start symbol: <undetermined>. *)

  | MenhirState152 : (('s, 'r) _menhir_cell1_exp _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 152.
        Stack shape : exp LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState156 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 156.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState160 : (('s, 'r) _menhir_cell1_stmt, 'r) _menhir_state
    (** State 160.
        Stack shape : stmt.
        Start symbol: <undetermined>. *)

  | MenhirState167 : (('s, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT, _menhir_box_prog) _menhir_state
    (** State 167.
        Stack shape : GLOBAL IDENT.
        Start symbol: prog. *)

  | MenhirState172 : (('s, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_state
    (** State 172.
        Stack shape : NEW.
        Start symbol: prog. *)

  | MenhirState176 : ((('s, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_RBRACKET, _menhir_box_prog) _menhir_state
    (** State 176.
        Stack shape : NEW ty RBRACKET.
        Start symbol: prog. *)

  | MenhirState187 : (('s, _menhir_box_prog) _menhir_cell1_gexp, _menhir_box_prog) _menhir_state
    (** State 187.
        Stack shape : gexp.
        Start symbol: prog. *)

  | MenhirState193 : (('s, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_state
    (** State 193.
        Stack shape : ty IDENT LPAREN.
        Start symbol: prog. *)

  | MenhirState195 : ((('s, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN, _menhir_box_prog) _menhir_state
    (** State 195.
        Stack shape : ty IDENT LPAREN arglist RPAREN.
        Start symbol: prog. *)

  | MenhirState200 : (('s, _menhir_box_prog) _menhir_cell1_decl, _menhir_box_prog) _menhir_state
    (** State 200.
        Stack shape : decl.
        Start symbol: prog. *)

  | MenhirState202 : ('s, _menhir_box_stmt_top) _menhir_state
    (** State 202.
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
# 442 "parser.ml"
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

and 's _menhir_cell0_RBRACKET = 
  | MenhirCell0_RBRACKET of 's * Lexing.position

and ('s, 'r) _menhir_cell1_RETURN = 
  | MenhirCell1_RETURN of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_RPAREN = 
  | MenhirCell0_RPAREN of 's * Lexing.position

and 's _menhir_cell0_SEMI = 
  | MenhirCell0_SEMI of 's * Lexing.position

and ('s, 'r) _menhir_cell1_TBOOL = 
  | MenhirCell1_TBOOL of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_TILDE = 
  | MenhirCell1_TILDE of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_TINT = 
  | MenhirCell1_TINT of 's * ('s, 'r) _menhir_state * Lexing.position

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
# 507 "parser.ml"
     in
    (
# 113 "parser.mly"
                                            ( l )
# 512 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_04 =
  fun stmts ->
    (
# 211 "parser.mly"
                                   ( stmts )
# 520 "parser.ml"
     : (Ast.block))

let _menhir_action_05 =
  fun _endpos__5_ _startpos__1_ init name ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 108 "parser.mly"
    ( Gvdecl (loc _startpos _endpos { name; init }) )
# 530 "parser.ml"
     : (Ast.decl))

let _menhir_action_06 =
  fun _endpos_body_ _startpos__1_ args body fname ->
    let frtyp = 
# 121 "parser.mly"
           ( RetVoid )
# 538 "parser.ml"
     in
    let _startpos_frtyp_ = _startpos__1_ in
    let _endpos = _endpos_body_ in
    let _startpos = _startpos_frtyp_ in
    (
# 110 "parser.mly"
    ( Gfdecl (loc _startpos _endpos { frtyp; fname; args; body }) )
# 546 "parser.ml"
     : (Ast.decl))

let _menhir_action_07 =
  fun _endpos_body_ _startpos_t_ args body fname t ->
    let frtyp = 
# 122 "parser.mly"
           ( RetVal t )
# 554 "parser.ml"
     in
    let _startpos_frtyp_ = _startpos_t_ in
    let _endpos = _endpos_body_ in
    let _startpos = _startpos_frtyp_ in
    (
# 110 "parser.mly"
    ( Gfdecl (loc _startpos _endpos { frtyp; fname; args; body }) )
# 562 "parser.ml"
     : (Ast.decl))

let _menhir_action_08 =
  fun () ->
    (
# 218 "parser.mly"
                      ( [] )
# 570 "parser.ml"
     : (Ast.block))

let _menhir_action_09 =
  fun b ->
    (
# 219 "parser.mly"
                      ( b )
# 578 "parser.ml"
     : (Ast.block))

let _menhir_action_10 =
  fun ifs ->
    (
# 220 "parser.mly"
                      ( [ ifs ] )
# 586 "parser.ml"
     : (Ast.block))

let _menhir_action_11 =
  fun _endpos_i_ _startpos_i_ i ->
    let _endpos = _endpos_i_ in
    let _startpos = _startpos_i_ in
    (
# 168 "parser.mly"
                        ( loc _startpos _endpos @@ CInt i )
# 596 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_12 =
  fun _endpos_s_ _startpos_s_ s ->
    let _endpos = _endpos_s_ in
    let _startpos = _startpos_s_ in
    (
# 169 "parser.mly"
                        (loc _startpos _endpos @@ CStr s )
# 606 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_13 =
  fun _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 170 "parser.mly"
                      (loc _startpos _endpos @@ CBool true)
# 616 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_14 =
  fun _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 171 "parser.mly"
                      (loc _startpos _endpos @@ CBool false)
# 626 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_15 =
  fun _endpos__2_ _startpos__1_ ->
    let t = 
# 125 "parser.mly"
            ( RString )
# 634 "parser.ml"
     in
    let _startpos_t_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 172 "parser.mly"
                          ( loc _startpos _endpos @@ CNull t )
# 642 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_16 =
  fun _endpos__2_ _startpos_t_ t ->
    let t = 
# 126 "parser.mly"
                           ( RArray t )
# 650 "parser.ml"
     in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 172 "parser.mly"
                          ( loc _startpos _endpos @@ CNull t )
# 657 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_17 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 129 "parser.mly"
           ( Add )
# 665 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 672 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_18 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 130 "parser.mly"
           ( Sub )
# 680 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 687 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_19 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 131 "parser.mly"
           ( Mul )
# 695 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 702 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_20 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 132 "parser.mly"
           ( Eq )
# 710 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 717 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_21 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 134 "parser.mly"
           ( Neq )
# 725 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 732 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_22 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 135 "parser.mly"
        ( Shl )
# 740 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 747 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_23 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 136 "parser.mly"
        ( Sar )
# 755 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 762 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_24 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 137 "parser.mly"
        ( Shr )
# 770 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 777 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_25 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 138 "parser.mly"
       ( Or )
# 785 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 792 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_26 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 139 "parser.mly"
        ( And )
# 800 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 807 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_27 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 140 "parser.mly"
      ( Gt )
# 815 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 822 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_28 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 141 "parser.mly"
        ( Gte )
# 830 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 837 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_29 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 142 "parser.mly"
      ( Lt )
# 845 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 852 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_30 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 143 "parser.mly"
        ( Lte )
# 860 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 867 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_31 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 144 "parser.mly"
         ( IAnd )
# 875 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 882 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_32 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 145 "parser.mly"
        ( IOr )
# 890 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 897 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_33 =
  fun _endpos_e_ _startpos__1_ e ->
    let u = 
# 149 "parser.mly"
          ( Neg )
# 905 "parser.ml"
     in
    let _startpos_u_ = _startpos__1_ in
    let _endpos = _endpos_e_ in
    let _startpos = _startpos_u_ in
    (
# 174 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 913 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_34 =
  fun _endpos_e_ _startpos__1_ e ->
    let u = 
# 150 "parser.mly"
          ( Lognot )
# 921 "parser.ml"
     in
    let _startpos_u_ = _startpos__1_ in
    let _endpos = _endpos_e_ in
    let _startpos = _startpos_u_ in
    (
# 174 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 929 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_35 =
  fun _endpos_e_ _startpos__1_ e ->
    let u = 
# 151 "parser.mly"
          ( Bitnot )
# 937 "parser.ml"
     in
    let _startpos_u_ = _startpos__1_ in
    let _endpos = _endpos_e_ in
    let _startpos = _startpos_u_ in
    (
# 174 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 945 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_36 =
  fun _endpos_id_ _startpos_id_ id ->
    let _endpos = _endpos_id_ in
    let _startpos = _startpos_id_ in
    (
# 175 "parser.mly"
                        ( loc _startpos _endpos @@ Id id )
# 955 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_37 =
  fun _endpos__4_ _startpos_e_ e i ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    (
# 177 "parser.mly"
                        ( loc _startpos _endpos @@ Index (e, i) )
# 965 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_38 =
  fun _endpos__4_ _startpos_e_ e xs ->
    let es = 
# 229 "<standard.mly>"
    ( xs )
# 973 "parser.ml"
     in
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    (
# 179 "parser.mly"
                        ( loc _startpos _endpos @@ Call (e,es) )
# 980 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_39 =
  fun e ->
    (
# 180 "parser.mly"
                        ( e )
# 988 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_40 =
  fun _endpos__5_ _startpos__1_ e ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 182 "parser.mly"
                        (loc _startpos _endpos @@ NewArr(TInt, e))
# 998 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_41 =
  fun _endpos__5_ _startpos__1_ e ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 184 "parser.mly"
                        (loc _startpos _endpos @@ NewArr(TBool, e))
# 1008 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_42 =
  fun _endpos__7_ _startpos__1_ xs ->
    let es = 
# 229 "<standard.mly>"
    ( xs )
# 1016 "parser.ml"
     in
    let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    (
# 186 "parser.mly"
                        (loc _startpos _endpos @@ CArr(TInt, es))
# 1023 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_43 =
  fun _endpos__7_ _startpos__1_ xs ->
    let es = 
# 229 "<standard.mly>"
    ( xs )
# 1031 "parser.ml"
     in
    let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    (
# 188 "parser.mly"
                        (loc _startpos _endpos @@ CArr(TBool, es))
# 1038 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_44 =
  fun _endpos__7_ _startpos__1_ t xs ->
    let es = 
# 229 "<standard.mly>"
    ( xs )
# 1046 "parser.ml"
     in
    let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    (
# 190 "parser.mly"
                        (loc _startpos _endpos @@ CArr(t, es))
# 1053 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_45 =
  fun e ->
    (
# 98 "parser.mly"
              ( e )
# 1061 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_46 =
  fun _endpos__2_ _startpos__1_ ->
    let t = 
# 125 "parser.mly"
            ( RString )
# 1069 "parser.ml"
     in
    let _startpos_t_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 154 "parser.mly"
                 ( loc _startpos _endpos @@ CNull t )
# 1077 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_47 =
  fun _endpos__2_ _startpos_t_ t ->
    let t = 
# 126 "parser.mly"
                           ( RArray t )
# 1085 "parser.ml"
     in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 154 "parser.mly"
                 ( loc _startpos _endpos @@ CNull t )
# 1092 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_48 =
  fun _endpos_i_ _startpos_i_ i ->
    let _endpos = _endpos_i_ in
    let _startpos = _startpos_i_ in
    (
# 155 "parser.mly"
               ( loc _startpos _endpos @@ CInt i )
# 1102 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_49 =
  fun _endpos_s_ _startpos_s_ s ->
    let _endpos = _endpos_s_ in
    let _startpos = _startpos_s_ in
    (
# 156 "parser.mly"
             ( loc _startpos _endpos @@ CStr s)
# 1112 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_50 =
  fun _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 157 "parser.mly"
         ( loc _startpos _endpos @@ CBool true)
# 1122 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_51 =
  fun _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 158 "parser.mly"
          ( loc _startpos _endpos @@ CBool false)
# 1132 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_52 =
  fun _endpos__7_ _startpos__1_ t xs ->
    let es = 
# 229 "<standard.mly>"
    ( xs )
# 1140 "parser.ml"
     in
    let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    (
# 160 "parser.mly"
          (loc _startpos _endpos @@ CArr(t, es))
# 1147 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_53 =
  fun _endpos_b2_ _startpos__1_ b1 b2 e ->
    let _endpos = _endpos_b2_ in
    let _startpos = _startpos__1_ in
    (
# 215 "parser.mly"
    ( loc _startpos _endpos @@ If(e,b1,b2) )
# 1157 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_54 =
  fun _endpos_id_ _startpos_id_ id ->
    let _endpos = _endpos_id_ in
    let _startpos = _startpos_id_ in
    (
# 163 "parser.mly"
                        ( loc _startpos _endpos @@ Id id )
# 1167 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_55 =
  fun _endpos__4_ _startpos_e_ e i ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    (
# 165 "parser.mly"
                        ( loc _startpos _endpos @@ Index (e, i) )
# 1177 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_56 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1185 "parser.ml"
     : (Ast.prog))

let _menhir_action_57 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1193 "parser.ml"
     : (Ast.prog))

let _menhir_action_58 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1201 "parser.ml"
     : (Ast.block))

let _menhir_action_59 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1209 "parser.ml"
     : (Ast.block))

let _menhir_action_60 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 1217 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_61 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 1225 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_62 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 1233 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_63 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 1241 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_64 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 1249 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_65 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 1257 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_66 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 1265 "parser.ml"
     : (Ast.vdecl list))

let _menhir_action_67 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 1273 "parser.ml"
     : (Ast.vdecl list))

let _menhir_action_68 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1281 "parser.ml"
     : (Ast.exp Ast.node option))

let _menhir_action_69 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 1289 "parser.ml"
     : (Ast.exp Ast.node option))

let _menhir_action_70 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1297 "parser.ml"
     : (Ast.stmt Ast.node option))

let _menhir_action_71 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 1305 "parser.ml"
     : (Ast.stmt Ast.node option))

let _menhir_action_72 =
  fun p ->
    (
# 104 "parser.mly"
                      ( p )
# 1313 "parser.ml"
     : (Ast.prog))

let _menhir_action_73 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1321 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_74 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1329 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_75 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1337 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_76 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1345 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_77 =
  fun x y ->
    let x = 
# 164 "<standard.mly>"
    ( (x, y) )
# 1353 "parser.ml"
     in
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1358 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_78 =
  fun x xs y ->
    let x = 
# 164 "<standard.mly>"
    ( (x, y) )
# 1366 "parser.ml"
     in
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1371 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_79 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1379 "parser.ml"
     : (Ast.vdecl list))

let _menhir_action_80 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1387 "parser.ml"
     : (Ast.vdecl list))

let _menhir_action_81 =
  fun _endpos__2_ _startpos_d_ d ->
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_d_ in
    (
# 199 "parser.mly"
                        ( loc _startpos _endpos @@ Decl(d) )
# 1397 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_82 =
  fun _endpos__4_ _startpos_p_ e p ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_p_ in
    (
# 200 "parser.mly"
                        ( loc _startpos _endpos @@ Assn(p,e) )
# 1407 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_83 =
  fun _endpos__5_ _startpos_e_ e xs ->
    let es = 
# 229 "<standard.mly>"
    ( xs )
# 1415 "parser.ml"
     in
    let _endpos = _endpos__5_ in
    let _startpos = _startpos_e_ in
    (
# 202 "parser.mly"
                        ( loc _startpos _endpos @@ SCall (e, es) )
# 1422 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_84 =
  fun ifs ->
    (
# 203 "parser.mly"
                        ( ifs )
# 1430 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_85 =
  fun _endpos__2_ _startpos__1_ ->
    let _endpos = _endpos__2_ in
    let _startpos = _startpos__1_ in
    (
# 204 "parser.mly"
                        ( loc _startpos _endpos @@ Ret(None) )
# 1440 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_86 =
  fun _endpos__3_ _startpos__1_ e ->
    let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    (
# 205 "parser.mly"
                        ( loc _startpos _endpos @@ Ret(Some e) )
# 1450 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_87 =
  fun _endpos_b_ _startpos__1_ b e ->
    let _endpos = _endpos_b_ in
    let _startpos = _startpos__1_ in
    (
# 207 "parser.mly"
                        ( loc _startpos _endpos @@ While(e, b) )
# 1460 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_88 =
  fun _endpos_b_ _startpos__1_ b exp_opt stmt xs ->
    let d = 
# 229 "<standard.mly>"
    ( xs )
# 1468 "parser.ml"
     in
    let _endpos = _endpos_b_ in
    let _startpos = _startpos__1_ in
    (
# 209 "parser.mly"
                        ( loc _startpos _endpos @@ For(d, exp_opt, stmt, b))
# 1475 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_89 =
  fun s ->
    (
# 101 "parser.mly"
               ( s )
# 1483 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_90 =
  fun () ->
    (
# 116 "parser.mly"
           ( TInt )
# 1491 "parser.ml"
     : (Ast.ty))

let _menhir_action_91 =
  fun () ->
    (
# 117 "parser.mly"
          ( TBool )
# 1499 "parser.ml"
     : (Ast.ty))

let _menhir_action_92 =
  fun () ->
    let r = 
# 125 "parser.mly"
            ( RString )
# 1507 "parser.ml"
     in
    (
# 118 "parser.mly"
           ( TRef r )
# 1512 "parser.ml"
     : (Ast.ty))

let _menhir_action_93 =
  fun t ->
    let r = 
# 126 "parser.mly"
                           ( RArray t )
# 1520 "parser.ml"
     in
    (
# 118 "parser.mly"
           ( TRef r )
# 1525 "parser.ml"
     : (Ast.ty))

let _menhir_action_94 =
  fun id init ->
    (
# 194 "parser.mly"
                             ( (id, init) )
# 1533 "parser.ml"
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
  
  let rec _menhir_run_204 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_stmt_top =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let s = _v in
          let _v = _menhir_action_89 s in
          MenhirBox_stmt_top _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_198 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_prog =
    fun _menhir_stack _v ->
      let p = _v in
      let _v = _menhir_action_72 p in
      MenhirBox_prog _v
  
  let rec _menhir_run_201 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_decl -> _ -> _menhir_box_prog =
    fun _menhir_stack _v ->
      let MenhirCell1_decl (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_57 x xs in
      _menhir_goto_list_decl_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_decl_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState200 ->
          _menhir_run_201 _menhir_stack _v
      | MenhirState092 ->
          _menhir_run_198 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_150_spec_202 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_stmt_top =
    fun _menhir_stack _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_84 ifs in
      _menhir_run_204 _menhir_stack _v _tok
  
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
          let _v = _menhir_action_92 () in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_exp : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState137 ->
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState156 ->
          _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState202 ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState160 ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState139 ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState147 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState121 ->
          _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState116 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState114 ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState108 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState005 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
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
      | MenhirState152 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState085 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState077 ->
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
  
  and _menhir_run_159 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
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
          let _v = _menhir_action_69 x in
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState030 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState030
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState025 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_60 () in
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
              let _v = _menhir_action_90 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState065 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
          | TBOOL ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_5 in
              let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_73 x in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState034 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState036 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState032 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState040 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState038 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_91 () in
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
                  let _v = _menhir_action_93 t in
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
      | MenhirState200 ->
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState167 ->
          _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState187 ->
          _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState176 ->
          _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState172 ->
          _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState193 ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState100 ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState202 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState160 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState156 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState147 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState139 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState137 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState121 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState116 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState114 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState108 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState005 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState085 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState077 ->
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
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_191 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer
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
                  let _v = _menhir_action_92 () in
                  _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState193 _tok
              | TINT ->
                  let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_5 in
                  let _v = _menhir_action_90 () in
                  _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState193 _tok
              | TBOOL ->
                  let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_7 in
                  let _v = _menhir_action_91 () in
                  _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState193 _tok
              | RPAREN ->
                  let _v = _menhir_action_64 () in
                  _menhir_run_103_spec_193 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_097 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_ty (_menhir_stack, _menhir_s, t, _startpos_t_) = _menhir_stack in
          let _v = _menhir_action_93 t in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_096 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer
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
                  let _v = _menhir_action_92 () in
                  _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState100 _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_90 () in
                  _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState100 _tok
              | TBOOL ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_6 in
                  let _v = _menhir_action_91 () in
                  _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState100 _tok
              | _ ->
                  _eRR ())
          | RPAREN ->
              let (x, y) = (_v, _v_0) in
              let _v = _menhir_action_77 x y in
              _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState193 ->
          _menhir_run_102_spec_193 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState095 ->
          _menhir_run_102_spec_095 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState100 ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_102_spec_193 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_65 x in
      _menhir_run_103_spec_193 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_103_spec_193 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let xs = _v in
      let _v = _menhir_action_03 xs in
      let _menhir_s = MenhirState193 in
      let _menhir_stack = MenhirCell1_arglist (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | _ ->
          _eRR ()
  
  and _menhir_run_106 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | VAR ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState106 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState106 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState106 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState106 _tok
      | RETURN ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState106 _tok
      | IF ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | IDENT _v ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106
      | FOR ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState106 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | RBRACE ->
          let _v = _menhir_action_58 () in
          _menhir_run_162 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_107 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
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
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
              let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
              _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState108 _tok
          | TINT ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_2 in
              let _v = _menhir_action_90 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState108 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
          | TBOOL ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_3 in
              let _v = _menhir_action_91 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState108 _tok
          | STRING _v ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_4, _v) in
              let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
              _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState108 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
          | INT _v ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_5, _v) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState108 _tok
          | IDENT _v ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_6, _v) in
              let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
              _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState108 _tok
          | FALSE ->
              let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_7) in
              let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
              _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState108 _tok
          | DASH ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
          | BANG ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_109 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_WHILE _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
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
              _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState042 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState042
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
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
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState005 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState005 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_91 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState005 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState005 _tok
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
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState005 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState005 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState005 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | _ ->
          _eRR ()
  
  and _menhir_run_088 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_TILDE as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
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
          let _v = _menhir_action_92 () in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState008 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell1_TINT (_menhir_stack, MenhirState008, _startpos_1) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACKET ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
              | TRUE ->
                  let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_2) in
                  let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
                  _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState011 _tok
              | TINT ->
                  let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_3 in
                  let _v = _menhir_action_90 () in
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState011 _tok
              | TILDE ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
              | TBOOL ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_91 () in
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState011 _tok
              | STRING _v ->
                  let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_5, _v) in
                  let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
                  _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState011 _tok
              | RBRACKET ->
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _menhir_stack = MenhirCell1_RBRACKET (_menhir_stack, MenhirState011, _endpos) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LBRACE ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | TSTRING ->
                          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                      | TRUE ->
                          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                          let _endpos_7 = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let (_endpos__1_, _startpos__1_) = (_endpos_7, _startpos_6) in
                          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
                          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState013 _tok
                      | TINT ->
                          let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let _startpos__1_ = _startpos_8 in
                          let _v = _menhir_action_90 () in
                          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState013 _tok
                      | TILDE ->
                          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                      | TBOOL ->
                          let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let _startpos__1_ = _startpos_9 in
                          let _v = _menhir_action_91 () in
                          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState013 _tok
                      | STRING _v ->
                          let _startpos_10 = _menhir_lexbuf.Lexing.lex_start_p in
                          let _endpos_11 = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let (_endpos_s_, _startpos_s_, s) = (_endpos_11, _startpos_10, _v) in
                          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
                          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState013 _tok
                      | NEW ->
                          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                      | LPAREN ->
                          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                      | INT _v ->
                          let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
                          let _endpos_13 = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let (_endpos_i_, _startpos_i_, i) = (_endpos_13, _startpos_12, _v) in
                          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
                          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState013 _tok
                      | IDENT _v ->
                          let _startpos_14 = _menhir_lexbuf.Lexing.lex_start_p in
                          let _endpos_15 = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let (_endpos_id_, _startpos_id_, id) = (_endpos_15, _startpos_14, _v) in
                          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
                          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState013 _tok
                      | FALSE ->
                          let _startpos_16 = _menhir_lexbuf.Lexing.lex_start_p in
                          let _endpos_17 = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let (_endpos__1_, _startpos__1_) = (_endpos_17, _startpos_16) in
                          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
                          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState013 _tok
                      | DASH ->
                          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                      | BANG ->
                          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                      | RBRACE ->
                          let _v = _menhir_action_60 () in
                          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | NEW ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
              | LPAREN ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
              | INT _v ->
                  let _startpos_18 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_18, _v) in
                  let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
                  _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState011 _tok
              | IDENT _v ->
                  let _startpos_19 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_19, _v) in
                  let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
                  _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState011 _tok
              | FALSE ->
                  let _startpos_20 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_20) in
                  let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
                  _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState011 _tok
              | DASH ->
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
              | BANG ->
                  _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | TBOOL ->
          let _startpos_21 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell1_TBOOL (_menhir_stack, MenhirState008, _startpos_21) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACKET ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
              | TRUE ->
                  let _startpos_22 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_22) in
                  let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
                  _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState075 _tok
              | TINT ->
                  let _startpos_23 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_23 in
                  let _v = _menhir_action_90 () in
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState075 _tok
              | TILDE ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
              | TBOOL ->
                  let _startpos_24 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_24 in
                  let _v = _menhir_action_91 () in
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState075 _tok
              | STRING _v ->
                  let _startpos_25 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_25, _v) in
                  let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
                  _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState075 _tok
              | RBRACKET ->
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _menhir_stack = MenhirCell1_RBRACKET (_menhir_stack, MenhirState075, _endpos) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LBRACE ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | TSTRING ->
                          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
                      | TRUE ->
                          let _startpos_26 = _menhir_lexbuf.Lexing.lex_start_p in
                          let _endpos_27 = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let (_endpos__1_, _startpos__1_) = (_endpos_27, _startpos_26) in
                          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
                          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState077 _tok
                      | TINT ->
                          let _startpos_28 = _menhir_lexbuf.Lexing.lex_start_p in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let _startpos__1_ = _startpos_28 in
                          let _v = _menhir_action_90 () in
                          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState077 _tok
                      | TILDE ->
                          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
                      | TBOOL ->
                          let _startpos_29 = _menhir_lexbuf.Lexing.lex_start_p in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let _startpos__1_ = _startpos_29 in
                          let _v = _menhir_action_91 () in
                          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState077 _tok
                      | STRING _v ->
                          let _startpos_30 = _menhir_lexbuf.Lexing.lex_start_p in
                          let _endpos_31 = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let (_endpos_s_, _startpos_s_, s) = (_endpos_31, _startpos_30, _v) in
                          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
                          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState077 _tok
                      | NEW ->
                          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
                      | LPAREN ->
                          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
                      | INT _v ->
                          let _startpos_32 = _menhir_lexbuf.Lexing.lex_start_p in
                          let _endpos_33 = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let (_endpos_i_, _startpos_i_, i) = (_endpos_33, _startpos_32, _v) in
                          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
                          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState077 _tok
                      | IDENT _v ->
                          let _startpos_34 = _menhir_lexbuf.Lexing.lex_start_p in
                          let _endpos_35 = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let (_endpos_id_, _startpos_id_, id) = (_endpos_35, _startpos_34, _v) in
                          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
                          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState077 _tok
                      | FALSE ->
                          let _startpos_36 = _menhir_lexbuf.Lexing.lex_start_p in
                          let _endpos_37 = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let (_endpos__1_, _startpos__1_) = (_endpos_37, _startpos_36) in
                          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
                          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState077 _tok
                      | DASH ->
                          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
                      | BANG ->
                          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
                      | RBRACE ->
                          let _v = _menhir_action_60 () in
                          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | NEW ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
              | LPAREN ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
              | INT _v ->
                  let _startpos_38 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_38, _v) in
                  let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
                  _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState075 _tok
              | IDENT _v ->
                  let _startpos_39 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_39, _v) in
                  let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
                  _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState075 _tok
              | FALSE ->
                  let _startpos_40 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_40) in
                  let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
                  _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState075 _tok
              | DASH ->
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
              | BANG ->
                  _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_082 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_NEW as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
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
                  let _menhir_stack = MenhirCell0_RBRACKET (_menhir_stack, _endpos) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TSTRING ->
                      _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
                  | TRUE ->
                      let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos__1_, _startpos__1_) = (_endpos_1, _startpos_0) in
                      let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
                      _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState085 _tok
                  | TINT ->
                      let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _startpos__1_ = _startpos_3 in
                      let _v = _menhir_action_90 () in
                      _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState085 _tok
                  | TILDE ->
                      _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
                  | TBOOL ->
                      let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _startpos__1_ = _startpos_5 in
                      let _v = _menhir_action_91 () in
                      _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState085 _tok
                  | STRING _v_7 ->
                      let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_9 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos_s_, _startpos_s_, s) = (_endpos_9, _startpos_8, _v_7) in
                      let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
                      _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState085 _tok
                  | NEW ->
                      _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
                  | LPAREN ->
                      _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
                  | INT _v_11 ->
                      let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_13 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos_i_, _startpos_i_, i) = (_endpos_13, _startpos_12, _v_11) in
                      let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
                      _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState085 _tok
                  | IDENT _v_15 ->
                      let _startpos_16 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_17 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos_id_, _startpos_id_, id) = (_endpos_17, _startpos_16, _v_15) in
                      let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
                      _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState085 _tok
                  | FALSE ->
                      let _startpos_19 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_20 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos__1_, _startpos__1_) = (_endpos_20, _startpos_19) in
                      let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
                      _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState085 _tok
                  | DASH ->
                      _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
                  | BANG ->
                      _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
                  | RBRACE ->
                      let _v = _menhir_action_60 () in
                      _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | _ ->
                      _eRR ())
              | LBRACKET ->
                  let (_startpos_t_, t) = (_startpos, _v) in
                  let _v = _menhir_action_93 t in
                  _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState014 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState045 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState047 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState018 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState019 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState049 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState051 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState053 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState055 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState057 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState059 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState061 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
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
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState063 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
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
  
  and _menhir_run_086 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_ty _menhir_cell0_RBRACKET -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RBRACE ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RBRACKET (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_ty (_menhir_stack, _, t, _) = _menhir_stack in
          let MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (xs, _endpos__7_) = (_v, _endpos) in
          let _v = _menhir_action_44 _endpos__7_ _startpos__1_ t xs in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__7_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_072 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_TINT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
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
          let MenhirCell1_TINT (_menhir_stack, _, _) = _menhir_stack in
          let MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e, _endpos__5_) = (_v, _endpos_0) in
          let _v = _menhir_action_40 _endpos__5_ _startpos__1_ e in
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
  
  and _menhir_run_070 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_TINT, ttv_result) _menhir_cell1_RBRACKET -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RBRACE ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_RBRACKET (_menhir_stack, _, _) = _menhir_stack in
          let MenhirCell1_TINT (_menhir_stack, _, _) = _menhir_stack in
          let MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (xs, _endpos__7_) = (_v, _endpos) in
          let _v = _menhir_action_42 _endpos__7_ _startpos__1_ xs in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__7_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_080 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_TBOOL as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
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
          let MenhirCell1_TBOOL (_menhir_stack, _, _) = _menhir_stack in
          let MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e, _endpos__5_) = (_v, _endpos_0) in
          let _v = _menhir_action_41 _endpos__5_ _startpos__1_ e in
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
  
  and _menhir_run_078 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_TBOOL, ttv_result) _menhir_cell1_RBRACKET -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RBRACE ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_RBRACKET (_menhir_stack, _, _) = _menhir_stack in
          let MenhirCell1_TBOOL (_menhir_stack, _, _) = _menhir_stack in
          let MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (xs, _endpos__7_) = (_v, _endpos) in
          let _v = _menhir_action_43 _endpos__7_ _startpos__1_ xs in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__7_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_112 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
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
                  _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
              | TRUE ->
                  let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos_2, _startpos_1) in
                  let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
                  _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState114 _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_90 () in
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState114 _tok
              | TILDE ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
              | TBOOL ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_6 in
                  let _v = _menhir_action_91 () in
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState114 _tok
              | STRING _v_8 ->
                  let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_s_, _startpos_s_, s) = (_endpos_10, _startpos_9, _v_8) in
                  let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
                  _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState114 _tok
              | NEW ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
              | LPAREN ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
              | INT _v_12 ->
                  let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_14 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_i_, _startpos_i_, i) = (_endpos_14, _startpos_13, _v_12) in
                  let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
                  _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState114 _tok
              | IDENT _v_16 ->
                  let _startpos_17 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_18 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_id_, _startpos_id_, id) = (_endpos_18, _startpos_17, _v_16) in
                  let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
                  _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState114 _tok
              | FALSE ->
                  let _startpos_20 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_21 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos_21, _startpos_20) in
                  let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
                  _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState114 _tok
              | DASH ->
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
              | BANG ->
                  _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_115 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_VAR _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
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
          let _v = _menhir_action_94 id init in
          _menhir_goto_vdecl _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_vdecl : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState202 ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState160 ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState139 ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState133 ->
          _menhir_run_132 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState131 ->
          _menhir_run_132 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_140 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__2_, _startpos_d_, d) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_81 _endpos__2_ _startpos_d_ d in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_stmt : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState202 ->
          _menhir_run_204 _menhir_stack _v _tok
      | MenhirState160 ->
          _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState139 ->
          _menhir_run_142_spec_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_160 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState160
      | VAR ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState160
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState160
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState160 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState160 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState160
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState160 _tok
      | STRING _v_3 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v_3) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState160 _tok
      | RETURN ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState160
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState160
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState160
      | INT _v_5 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v_5) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState160 _tok
      | IF ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState160
      | IDENT _v_7 ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 MenhirState160
      | FOR ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState160
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState160 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState160
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState160
      | RBRACE ->
          let _v = _menhir_action_58 () in
          _menhir_run_161 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_151 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
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
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState152
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_2, _startpos_1) in
              let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState152 _tok
          | TINT ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_4 in
              let _v = _menhir_action_90 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState152 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState152
          | TBOOL ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_6 in
              let _v = _menhir_action_91 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState152 _tok
          | STRING _v_8 ->
              let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos_10, _startpos_9, _v_8) in
              let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState152 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState152
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState152
          | INT _v_12 ->
              let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_14 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_14, _startpos_13, _v_12) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState152 _tok
          | IDENT _v_16 ->
              let _startpos_17 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_18 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos_18, _startpos_17, _v_16) in
              let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState152 _tok
          | FALSE ->
              let _startpos_20 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_21 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_21, _startpos_20) in
              let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState152 _tok
          | DASH ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState152
          | BANG ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState152
          | RPAREN ->
              let _v = _menhir_action_60 () in
              _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | LEQ ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
          | TRUE ->
              let _startpos_24 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_25 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_25, _startpos_24) in
              let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
              _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState156 _tok
          | TINT ->
              let _startpos_27 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_27 in
              let _v = _menhir_action_90 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState156 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
          | TBOOL ->
              let _startpos_29 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_29 in
              let _v = _menhir_action_91 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState156 _tok
          | STRING _v_31 ->
              let _startpos_32 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_33 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos_33, _startpos_32, _v_31) in
              let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
              _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState156 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
          | INT _v_35 ->
              let _startpos_36 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_37 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_37, _startpos_36, _v_35) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState156 _tok
          | IDENT _v_39 ->
              let _startpos_40 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_41 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos_41, _startpos_40, _v_39) in
              let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
              _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState156 _tok
          | FALSE ->
              let _startpos_43 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_44 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_44, _startpos_43) in
              let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
              _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState156 _tok
          | DASH ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
          | BANG ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState156
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
  
  and _menhir_run_153 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
              let _v = _menhir_action_83 _endpos__5_ _startpos_e_ e xs in
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
  
  and _menhir_run_157 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
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
              let _v = _menhir_action_55 _endpos__4_ _startpos_e_ e i in
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
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState147 _tok
      | TINT ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState147 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | TBOOL ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_4 in
          let _v = _menhir_action_91 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState147 _tok
      | STRING _v_6 ->
          let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_7, _v_6) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState147 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | INT _v_9 ->
          let _startpos_10 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_10, _v_9) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState147 _tok
      | IDENT _v_12 ->
          let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_13, _v_12) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState147 _tok
      | FALSE ->
          let _startpos_15 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_15) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState147 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | _ ->
          _eRR ()
  
  and _menhir_run_148 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_lhs as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
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
          let _v = _menhir_action_82 _endpos__4_ _startpos_p_ e p in
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
  
  and _menhir_run_116 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | TRUE ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState116 _tok
      | TINT ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState116 _tok
      | TILDE ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | TBOOL ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_91 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState116 _tok
      | STRING _v ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState116 _tok
      | SEMI ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _endpos__2_) = (_startpos, _endpos) in
          let _v = _menhir_action_85 _endpos__2_ _startpos__1_ in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | NEW ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | LPAREN ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | INT _v ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState116 _tok
      | IDENT _v ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState116 _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState116 _tok
      | DASH ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | BANG ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | _ ->
          _eRR ()
  
  and _menhir_run_118 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_RETURN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
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
          let _v = _menhir_action_86 _endpos__3_ _startpos__1_ e in
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
  
  and _menhir_run_120 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
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
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
              let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState121 _tok
          | TINT ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_2 in
              let _v = _menhir_action_90 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState121 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | TBOOL ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_3 in
              let _v = _menhir_action_91 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState121 _tok
          | STRING _v ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_4, _v) in
              let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState121 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | INT _v ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_5, _v) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState121 _tok
          | IDENT _v ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_6, _v) in
              let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState121 _tok
          | FALSE ->
              let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_7) in
              let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState121 _tok
          | DASH ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | BANG ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_122 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
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
              _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
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
  
  and _menhir_run_129 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
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
          let _v = _menhir_action_54 _endpos_id_ _startpos_id_ id in
          _menhir_goto_lhs _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_id_ _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_130 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
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
              _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
          | SEMI ->
              let _v = _menhir_action_66 () in
              _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState131
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_136 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_loption_separated_nonempty_list_COMMA_vdecl__ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_SEMI (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_0, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState137 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState137 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState137 _tok
      | STRING _v_4 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_5 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos_5, _startpos, _v_4) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState137 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | INT _v_7 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_8 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos_8, _startpos, _v_7) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState137 _tok
      | IDENT _v_10 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_11 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos_11, _startpos, _v_10) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState137 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_13 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_13, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState137 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | SEMI ->
          let _v = _menhir_action_68 () in
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState137
      | _ ->
          _eRR ()
  
  and _menhir_run_138 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_option_exp_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_SEMI (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | VAR ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_0, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState139 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState139 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState139 _tok
      | STRING _v_4 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_5 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos_5, _startpos, _v_4) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState139 _tok
      | RETURN ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | INT _v_7 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_8 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos_8, _startpos, _v_7) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState139 _tok
      | IF ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | IDENT _v_10 ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _v_10 MenhirState139
      | FOR ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_11 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_11, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState139 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | RPAREN ->
          let _v = _menhir_action_70 () in
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState139 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_143 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_option_exp_ _menhir_cell0_SEMI as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_option_stmt_ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState144
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_161 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_stmt -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_stmt (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_59 x xs in
      _menhir_goto_list_stmt_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_stmt_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState106 ->
          _menhir_run_162 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState160 ->
          _menhir_run_161 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_162 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LBRACE -> _ -> _ -> _ -> ttv_result =
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
      | MenhirState195 ->
          _menhir_run_196 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState105 ->
          _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState144 ->
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState125 ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState123 ->
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_196 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
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
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState200
      | TSTRING ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_92 () in
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState200 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState200 _tok
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState200 _tok
      | GLOBAL ->
          _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState200
      | EOF ->
          let _v = _menhir_action_56 () in
          _menhir_run_201 _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_093 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
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
                  let _v = _menhir_action_92 () in
                  _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState095 _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_90 () in
                  _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState095 _tok
              | TBOOL ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_6 in
                  let _v = _menhir_action_91 () in
                  _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState095 _tok
              | RPAREN ->
                  let _v = _menhir_action_64 () in
                  _menhir_run_103_spec_095 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_103_spec_095 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let xs = _v in
      let _v = _menhir_action_03 xs in
      let _menhir_s = MenhirState095 in
      let _menhir_stack = MenhirCell1_arglist (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | _ ->
          _eRR ()
  
  and _menhir_run_165 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
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
                  _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState167
              | TRUE ->
                  let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos_2, _startpos_1) in
                  let _v = _menhir_action_50 _endpos__1_ _startpos__1_ in
                  _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_90 () in
                  _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState167 _tok
              | TBOOL ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_6 in
                  let _v = _menhir_action_91 () in
                  _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState167 _tok
              | STRING _v_8 ->
                  let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_s_, _startpos_s_, s) = (_endpos_10, _startpos_9, _v_8) in
                  let _v = _menhir_action_49 _endpos_s_ _startpos_s_ s in
                  _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | NEW ->
                  _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState167
              | INT _v_12 ->
                  let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_14 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_i_, _startpos_i_, i) = (_endpos_14, _startpos_13, _v_12) in
                  let _v = _menhir_action_48 _endpos_i_ _startpos_i_ i in
                  _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | FALSE ->
                  let _startpos_16 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_17 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos_17, _startpos_16) in
                  let _v = _menhir_action_51 _endpos__1_ _startpos__1_ in
                  _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_168 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NULL ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _endpos__2_) = (_startpos, _endpos) in
          let _v = _menhir_action_46 _endpos__2_ _startpos__1_ in
          _menhir_goto_gexp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | LBRACKET ->
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_92 () in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_gexp : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState167 ->
          _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState187 ->
          _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState176 ->
          _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_189 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_prog =
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
  
  and _menhir_run_186 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_gexp (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
          | TRUE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
              let _v = _menhir_action_50 _endpos__1_ _startpos__1_ in
              _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TINT ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_90 () in
              _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState187 _tok
          | TBOOL ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_91 () in
              _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState187 _tok
          | STRING _v_3 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v_3) in
              let _v = _menhir_action_49 _endpos_s_ _startpos_s_ s in
              _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | NEW ->
              _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
          | INT _v_5 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v_5) in
              let _v = _menhir_action_48 _endpos_i_ _startpos_i_ i in
              _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | FALSE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
              let _v = _menhir_action_51 _endpos__1_ _startpos__1_ in
              _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | _ ->
              _eRR ())
      | RBRACE ->
          let x = _v in
          let _v = _menhir_action_75 x in
          _menhir_goto_separated_nonempty_list_COMMA_gexp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_179 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
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
                  let _v = _menhir_action_47 _endpos__2_ _startpos_t_ t in
                  _menhir_goto_gexp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | LBRACKET ->
                  let (_startpos_t_, t) = (_startpos, _v) in
                  let _v = _menhir_action_93 t in
                  _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_172 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_92 () in
          _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState172 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_90 () in
          _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState172 _tok
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_91 () in
          _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState172 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_173 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_NEW as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
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
                  let _menhir_stack = MenhirCell0_RBRACKET (_menhir_stack, _endpos) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TSTRING ->
                      _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
                  | TRUE ->
                      let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos__1_, _startpos__1_) = (_endpos_1, _startpos_0) in
                      let _v = _menhir_action_50 _endpos__1_ _startpos__1_ in
                      _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState176 _tok
                  | TINT ->
                      let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _startpos__1_ = _startpos_3 in
                      let _v = _menhir_action_90 () in
                      _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState176 _tok
                  | TBOOL ->
                      let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _startpos__1_ = _startpos_5 in
                      let _v = _menhir_action_91 () in
                      _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState176 _tok
                  | STRING _v_7 ->
                      let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_9 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos_s_, _startpos_s_, s) = (_endpos_9, _startpos_8, _v_7) in
                      let _v = _menhir_action_49 _endpos_s_ _startpos_s_ s in
                      _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState176 _tok
                  | NEW ->
                      _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState176
                  | INT _v_11 ->
                      let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_13 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos_i_, _startpos_i_, i) = (_endpos_13, _startpos_12, _v_11) in
                      let _v = _menhir_action_48 _endpos_i_ _startpos_i_ i in
                      _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState176 _tok
                  | FALSE ->
                      let _startpos_15 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_16 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos__1_, _startpos__1_) = (_endpos_16, _startpos_15) in
                      let _v = _menhir_action_51 _endpos__1_ _startpos__1_ in
                      _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState176 _tok
                  | RBRACE ->
                      let _v = _menhir_action_62 () in
                      _menhir_run_184 _menhir_stack _menhir_lexbuf _menhir_lexer _v
                  | _ ->
                      _eRR ())
              | LBRACKET ->
                  let (_startpos_t_, t) = (_startpos, _v) in
                  let _v = _menhir_action_93 t in
                  _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_184 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_RBRACKET -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_RBRACKET (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_ty (_menhir_stack, _, t, _) = _menhir_stack in
      let MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (xs, _endpos__7_) = (_v, _endpos) in
      let _v = _menhir_action_52 _endpos__7_ _startpos__1_ t xs in
      _menhir_goto_gexp _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_separated_nonempty_list_COMMA_gexp_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState187 ->
          _menhir_run_188 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState176 ->
          _menhir_run_183_spec_176 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_188 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_gexp -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_gexp (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_76 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_gexp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_183_spec_176 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_RBRACKET -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_63 x in
      _menhir_run_184 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_164 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_arglist (_menhir_stack, _, args) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, fname, _, _) = _menhir_stack in
      let MenhirCell1_TVOID (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_body_, body) = (_endpos, _v) in
      let _v = _menhir_action_06 _endpos_body_ _startpos__1_ args body fname in
      _menhir_goto_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_145 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_option_exp_ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_option_stmt_ _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> ttv_result =
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
      let _v = _menhir_action_88 _endpos_b_ _startpos__1_ b exp_opt stmt xs in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_127 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN, ttv_result) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _ -> ttv_result =
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
      let _v = _menhir_action_53 _endpos_b2_ _startpos__1_ b1 b2 e in
      _menhir_goto_if_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_b2_ _v _menhir_s _tok
  
  and _menhir_goto_if_stmt : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState202 ->
          _menhir_run_150_spec_202 _menhir_stack _v _tok
      | MenhirState106 ->
          _menhir_run_150_spec_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState160 ->
          _menhir_run_150_spec_160 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState139 ->
          _menhir_run_150_spec_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState125 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_150_spec_106 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_84 ifs in
      _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
  
  and _menhir_run_150_spec_160 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_84 ifs in
      _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState160 _tok
  
  and _menhir_run_150_spec_139 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_option_exp_ _menhir_cell0_SEMI -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_84 ifs in
      _menhir_run_142_spec_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_142_spec_139 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_option_exp_ _menhir_cell0_SEMI -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_71 x in
      _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState139 _tok
  
  and _menhir_run_126 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN, ttv_result) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let (_endpos_ifs_, ifs) = (_endpos, _v) in
      let _v = _menhir_action_10 ifs in
      _menhir_goto_else_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_ifs_ _v _tok
  
  and _menhir_run_124 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_block (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
          | IF ->
              _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
          | _ ->
              _eRR ())
      | BANG | DASH | EOF | FALSE | FOR | IDENT _ | IF | INT _ | LPAREN | NEW | RBRACE | RETURN | RPAREN | STRING _ | TBOOL | TILDE | TINT | TRUE | TSTRING | VAR | WHILE ->
          let _v = _menhir_action_08 () in
          _menhir_goto_else_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_111 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_WHILE _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_exp (_menhir_stack, _, e, _, _) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_WHILE (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_87 _endpos_b_ _startpos__1_ b e in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_132 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_vdecl (_menhir_stack, _menhir_s, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR ->
              _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
          | _ ->
              _eRR ())
      | SEMI ->
          let x = _v in
          let _v = _menhir_action_79 x in
          _menhir_goto_separated_nonempty_list_COMMA_vdecl_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_vdecl_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState131 ->
          _menhir_run_135_spec_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState133 ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_135_spec_131 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_67 x in
      _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState131
  
  and _menhir_run_134 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_vdecl -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_vdecl (_menhir_stack, _menhir_s, x, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_80 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_vdecl_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_102_spec_095 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_65 x in
      _menhir_run_103_spec_095 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_101 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell0_IDENT (_menhir_stack, y, _, _) = _menhir_stack in
      let MenhirCell1_ty (_menhir_stack, _menhir_s, x, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_78 x xs y in
      _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_separated_nonempty_list_COMMA_exp_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState065 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState152 ->
          _menhir_run_026_spec_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState085 ->
          _menhir_run_026_spec_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState077 ->
          _menhir_run_026_spec_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
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
      let _v = _menhir_action_74 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_026_spec_152 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_61 x in
      _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_026_spec_085 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_ty _menhir_cell0_RBRACKET -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_61 x in
      _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_026_spec_077 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_TBOOL, ttv_result) _menhir_cell1_RBRACKET -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_61 x in
      _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_026_spec_013 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_TINT, ttv_result) _menhir_cell1_RBRACKET -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_61 x in
      _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_026_spec_025 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_61 x in
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
  
  and _menhir_run_090 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_exp_top) _menhir_state -> _ -> _menhir_box_exp_top =
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
          let _v = _menhir_action_45 e in
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
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState000 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState000 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState000 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState000 _tok
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
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState000 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_36 _endpos_id_ _startpos_id_ id in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState000 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState000 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | _ ->
          _eRR ()
  
  let rec _menhir_run_092 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TVOID ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | TSTRING ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_92 () in
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState092 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState092 _tok
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState092 _tok
      | GLOBAL ->
          _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | EOF ->
          let _v = _menhir_action_56 () in
          _menhir_run_198 _menhir_stack _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_202 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_stmt_top =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
      | VAR ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_13 _endpos__1_ _startpos__1_ in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState202 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_90 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState202 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_91 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState202 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_12 _endpos_s_ _startpos_s_ s in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState202 _tok
      | RETURN ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState202 _tok
      | IF ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
      | IDENT _v ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState202
      | FOR ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_14 _endpos__1_ _startpos__1_ in
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState202 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
      | _ ->
          _eRR ()
  
end

let stmt_top =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_stmt_top v = _menhir_run_202 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let prog =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_prog v = _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let exp_top =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_exp_top v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
