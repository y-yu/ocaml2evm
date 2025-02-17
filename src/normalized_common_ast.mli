type bop = UAdd | USub | UMul | UDiv | SAdd | SSub | SMul | SDiv

type value =
  | Var of string
  | IntV of int
  | BoolV of bool
  | StrV of string
  | UnitV
  | HashReplace
  | HashFind
  | Caller
  | Bop of bop

val string_of_bop : bop -> string
val string_of_value : value -> string
