open Normalized_common_ast

type acexp =
  | AVal of value
  | AApp of (value * value list * Types.type_expr)
  | ATuple of value list

type aexp =
  | ACexp of acexp
  | ASeq of acexp * aexp
  | ALetin of (string list * (string * string list) list) * acexp * aexp

type adecl = {
  name : Ident.t;
  arg_pats : Typedtree.pattern list;
  body : aexp;
  mutability : Abi.state_mutability;
}

val string_of_acexp : acexp -> string
val string_of_aexp : aexp -> string
val string_of_adecl : adecl -> string
