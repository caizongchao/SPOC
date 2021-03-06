type extension = ExFloat32 | ExFloat64
type ('a, 'b, 'c) kirc_kernel = {
  ml_kern : 'a;
  body : Kirc_Ast.k_ext;
  ret_val : Kirc_Ast.k_ext * ('b, 'c) Spoc.Vector.kind;
  extensions : extension array;
}
val opencl_head : string
val opencl_float64 : string
val cuda_float64 : string
val cuda_head : string
val new_var : int -> Kirc_Ast.k_ext
val new_int_array : int -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val new_int32_array : int -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val new_int64_array : int -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val new_float32_array : int -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val new_float64_array : int -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val var : int -> Kirc_Ast.k_ext
val spoc_gen_kernel : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_fun_kernel : 'a -> 'b -> unit
val seq : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val app : Kirc_Ast.k_ext -> Kirc_Ast.k_ext array -> Kirc_Ast.k_ext
val spoc_unit : unit -> Kirc_Ast.k_ext
val spoc_int : int -> Kirc_Ast.k_ext
val global_int_var : (unit -> int) -> Kirc_Ast.k_ext
val global_float_var : (unit -> float) -> Kirc_Ast.k_ext
val spoc_int32 : int32 -> Kirc_Ast.k_ext
val spoc_float : float -> Kirc_Ast.k_ext
val spoc_double : float -> Kirc_Ast.k_ext
val spoc_int_id : int -> Kirc_Ast.k_ext
val spoc_float_id : float -> Kirc_Ast.k_ext
val spoc_plus : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_plus_float : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_min : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_min_float : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_mul : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_mul_float : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_div : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_div_float : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_mod : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_ife :
  Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_if : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_do :
  Kirc_Ast.k_ext ->
  Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_while : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val params : Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_id : 'a -> Kirc_Ast.k_ext
val spoc_return : Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val concat : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val empty_arg : unit -> Kirc_Ast.k_ext
val new_int_var : int -> Kirc_Ast.k_ext
val new_float_var : int -> Kirc_Ast.k_ext
val new_float64_var : int -> Kirc_Ast.k_ext
val new_double_var : int -> Kirc_Ast.k_ext
val new_unit_var : int -> Kirc_Ast.k_ext
val new_int_vec_var : int -> Kirc_Ast.k_ext
val new_float_vec_var : int -> Kirc_Ast.k_ext
val new_double_vec_var : int -> Kirc_Ast.k_ext
val int_vect : int -> Kirc_Ast.kvect
val set_vect_var : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val set_arr_var : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val intrinsics : string -> string -> Kirc_Ast.k_ext
val spoc_local_env : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_set : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_declare : Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val spoc_local_var : 'a -> 'a
val spoc_acc : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val int_var : 'a -> 'a
val int32_var : 'a -> 'a
val float_var : 'a -> 'a
val double_var : int -> Kirc_Ast.k_ext
val equals : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val equals32 : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val equals64 : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val equalsF : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val equalsF64 : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val b_or : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val b_and : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val lt : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val lt32 : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val lt64 : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val ltF : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val ltF64 : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val gt : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val gt32 : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val gt64 : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val gtF : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val gtF64 : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val lte : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val lte32 : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val lte64 : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val lteF : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val lteF64 : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val gte : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val gte32 : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val gte64 : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val gteF : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val gteF64 : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val get_vec : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val get_arr : Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val return_unit : unit -> Kirc_Ast.k_ext
val return_int : int -> Kirc_Ast.k_ext
val return_float : int -> Kirc_Ast.k_ext
val return_double : int -> Kirc_Ast.k_ext
val print : string -> unit
val debug_print :
  ('a, 'b) Spoc.Kernel.spoc_kernel * ('c, 'd, 'e) kirc_kernel -> unit
val rewrite : Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val return_v : (string * string) ref
val save : string -> string -> unit
val load_file : string -> string
val gen :
  ?only:Spoc.Devices.specificLibrary ->
  ('a, 'b) Spoc.Kernel.spoc_kernel * ('c, 'd, 'e) kirc_kernel ->
  ('a, 'b) Spoc.Kernel.spoc_kernel * ('c, 'd, 'e) kirc_kernel
val run :
  ?recompile:bool ->
  ('a, 'b) Spoc.Kernel.spoc_kernel * ('c, 'd, 'e) kirc_kernel ->
  'a ->
  Spoc.Kernel.block * Spoc.Kernel.grid -> int -> Spoc.Devices.device -> unit
val compile_kernel_to_files :
  string ->
  ('a, 'b) Spoc.Kernel.spoc_kernel * ('c, 'd, 'e) kirc_kernel -> unit
module Std :
  sig
    val thread_idx_x : int
    val thread_idx_y : int
    val thread_idx_z : int
    val block_idx_x : int
    val block_idx_y : int
    val block_idx_z : int
    val block_dim_x : int
    val block_dim_y : int
    val block_dim_z : int
    val global_thread_id : int
    val return : unit -> unit
    val float64 : int -> float
    val int_of_float64 : float -> int
    val block_barrier : unit -> unit
    val make_shared : int -> int array
  end
module Math :
  sig
    module Float32 :
      sig
        val add : float -> float -> float
        val minus : float -> float -> float
        val mul : float -> float -> float
        val div : float -> float -> float
        val pow : float -> float -> float
        val sqrt : float -> float
        val exp : float -> float
        val log : float -> float
        val log10 : float -> float
        val expm1 : float -> float
        val log1p : float -> float
        val acos : float -> float
        val cos : float -> float
        val cosh : float -> float
        val asin : float -> float
        val sin : float -> float
        val sinh : float -> float
        val tan : float -> float
        val tanh : float -> float
        val atan : float -> float
        val atan2 : float -> float -> float
        val hypot : float -> float -> float
        val ceil : float -> float
        val floor : float -> float
        val abs_float : float -> float
        val copysign : float -> float -> float
        val modf : float -> float * float
        val zero : float
        val one : float
        val of_float : float -> float
        val to_float : float -> float
        val make_shared : int -> float array
      end
    module Float64 :
      sig
        val add : float -> float -> float
        val minus : float -> float -> float
        val mul : float -> float -> float
        val div : float -> float -> float
        val pow : float -> float -> float
        val sqrt : float -> float
        val exp : float -> float
        val log : float -> float
        val log10 : float -> float
        val expm1 : float -> float
        val log1p : float -> float
        val acos : float -> float
        val cos : float -> float
        val cosh : float -> float
        val asin : float -> float
        val sin : float -> float
        val sinh : float -> float
        val tan : float -> float
        val tanh : float -> float
        val atan : float -> float
        val atan2 : float -> float -> float
        val hypot : float -> float -> float
        val ceil : float -> float
        val floor : float -> float
        val abs_float : float -> float
        val copysign : float -> float -> float
        val modf : float -> float * float
        val zero : float
        val one : float
        val of_float : float -> float
        val to_float : float -> float
        val make_shared : int -> float array
      end
  end
val a_to_vect : Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val a_to_return_vect :
  Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val param_list : int list ref
val add_to_param_list : int -> unit
val check_and_transform_to_map : Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val arg_of_vec :
  ('a, 'b) Spoc.Vector.vector -> ('a, 'b) Spoc.Kernel.kernelArgs
val propagate :
  (Kirc_Ast.k_ext -> Kirc_Ast.k_ext) -> Kirc_Ast.k_ext -> Kirc_Ast.k_ext
val map :
  ('a, 'b) Spoc.Kernel.spoc_kernel * ('c -> 'i, 'i, 'j) kirc_kernel ->
  ?dev:Spoc.Devices.device ->
  ('g, 'h) Spoc.Vector.vector -> ('i, 'j) Spoc.Vector.vector
val map2 :
  ('a, 'b) Spoc.Kernel.spoc_kernel * ('c -> 'd -> 'l, 'l, 'm) kirc_kernel ->
  ?dev:Spoc.Devices.device ->
  ('h, 'i) Spoc.Vector.vector ->
  ('j, 'k) Spoc.Vector.vector -> ('l, 'm) Spoc.Vector.vector
