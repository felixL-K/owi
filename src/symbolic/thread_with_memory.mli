(* SPDX-License-Identifier: AGPL-3.0-or-later *)
(* Copyright © 2021-2024 OCamlPro *)
(* Written by the Owi programmers *)

(** @inline *)
include
  Thread_intf.S
    with type Memory.collection = Symbolic_memory_concretizing.collection

val project : t -> Thread_without_memory.t * Memory.collection

val restore : Memory.collection -> Thread_without_memory.t -> t
