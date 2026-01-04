[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/)

## `< Tech Stack />`

[![Rust](https://img.shields.io/badge/Rust-Edition%202021-black?style=flat&logo=rust)](https://www.rust-lang.org/)
[![Cargo](https://img.shields.io/badge/Cargo-Build-informational?style=flat&logo=rust)](https://doc.rust-lang.org/cargo/)

# Portafolio Rust

## `Github Codespaces`

En la terminal:

```sh
./menu.sh
```

Nota: `menu.sh` puede ejecutarse directamente en Codespaces; si por alguna razón no puede ejecutarlo, use `bash menu.sh`.

## `Propósito`

Portafolio Rust recopila ejercicios en Rust organizados por niveles de aprendizaje. El objetivo es mostrar implementaciones pedagógicas y autocontenidas mientras se avanza en temas clave: ownership, iteradores, smart pointers, concurrencia, async y aspectos de bajo nivel.

<p align="center">
	<img src="Diagrama.svg" alt="Diagrama de niveles" style="max-width:100%; height:auto;">
</p>

## `Ejecutar un ejercicio (directo con Cargo)`

Los ejercicios están en `./examples`.

```sh
cargo run --example n1_01_enums_datos_enum
```

## `Estructura`

- `examples/` → ejercicios autocontenidos (1 archivo por ejercicio)
- `src/lib.rs` → utilidades compartidas opcionales (helpers)

## `Nota sobre crates externos`

Algunos ejercicios avanzados pueden requerir crates comunes (por ejemplo: `tokio`, `rayon`) o APIs específicas del sistema. En esos casos, el ejercicio se deja marcado como pendiente (◻) hasta agregar dependencias/configuración.

## `Ejercicios`

Leyenda


☑ Completado

◻ Pendiente

<details>
	<summary><h3><strong><code>01 :: Borrow Checker & Tipado</code></strong></h3></summary>

| Status | Exercise | Topic | Source | Live Demo |
|---|---|---|---|---|
| ◻ | Enums con Datos  (V4/V6) | `enum` | [View Code](examples/nivel1/n1_01_enums_datos_enum.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Manejo de Errores (Result): división segura | `result` | [View Code](examples/nivel1/n1_02_manejo_errores.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Option Chaining: map + and_then | `option / match` | [View Code](examples/nivel1/n1_03_option_chaining.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Ownership Move: consumir String y devolverlo | `ownership` | [View Code](examples/nivel1/n1_04_propiedad_mover.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Borrowing: longitud sin tomar ownership | `ownership` | [View Code](examples/nivel1/n1_05_borrowing_longitud.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Slices de String: primera palabra | `slices` | [View Code](examples/nivel1/n1_06_slice_string.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Structs con Métodos: Rectangulo | `struct` | [View Code](examples/nivel1/n1_07_structs_m_todos.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Pattern Matching Avanzado: match tupla | `match` | [View Code](examples/nivel1/n1_08_pattern_matching.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | If Let: refactorizar match | `match / if let` | [View Code](examples/nivel1/n1_09_if_let_refactorizar.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Vectores y Capacidad: with_capacity | `vectores` | [View Code](examples/nivel1/n1_10_vector_capacidad.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | HashMaps de Conteo: .entry().or_insert() | `hashmap` | [View Code](examples/nivel1/n1_11_hashmap_conteo.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Panic Controlado: estado inconsistente | `result / panic` | [View Code](examples/nivel1/n1_12_panic_controlado.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Shadowing: string | `shadowing` | [View Code](examples/nivel1/n1_13_shadowing_string.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Loops con Etiquetas: break outer/inner | `loops` | [View Code](examples/nivel1/n1_14_loops_etiquetas.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Traits Derivados: Debug/PartialEq/Clone | `struct / clone` | [View Code](examples/nivel1/n1_15_traits_derivados.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Copy vs Clone: int vs String | `copy / clone` | [View Code](examples/nivel1/n1_16_copy_vs_clone.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | From/Into Traits: implementar From<&str> | `struct / from` | [View Code](examples/nivel1/n1_17_from_into_traits.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Custom Display: std::fmt::Display | `display` | [View Code](examples/nivel1/n1_18_custom_display.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Lifetimes Básicos: devolver &str más larga | `lifetime` | [View Code](examples/nivel1/n1_19_lifetimes_b_sicos.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Unit Testing: #[cfg(test)] | `test` | [View Code](examples/nivel1/n1_20_unit_testing.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |

</details>

<details>
	<summary><h3><strong><code>02 :: Iteradores & Funcional</code></strong></h3></summary>

| Status | Exercise | Topic | Source | Live Demo |
|---|---|---|---|---|
| ◻ | Map y Filter: cuadrados de pares y sumar | `vec / map` | [View Code](examples/nivel2/n2_01_map_filter_cuadrados.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Fold: suma con fold | `fold` | [View Code](examples/nivel2/n2_02_fold_suma_fold.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Zip: dos vectores a HashMap | `hashmap / zip` | [View Code](examples/nivel2/n2_03_zip_dos_vectores.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Iteradores infinitos: filtrar primos y take(5) | `iteradores` | [View Code](examples/nivel2/n2_04_iterador_infinitos.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | FlatMap: aplanar Vec<Vec<i32>> | `vec / flatmap` | [View Code](examples/nivel2/n2_05_flatmap_aplanar.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Collect: Vec/HashSet/LinkedList con turbofish | `vec / collect` | [View Code](examples/nivel2/n2_06_collect_vector.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Closures: Fn/FnMut/FnOnce | `closure` | [View Code](examples/nivel2/n2_07_closures_fn_fnmut.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Captura de Entorno: closure mut | `closure` | [View Code](examples/nivel2/n2_08_captura_entorno.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Iteradores Personalizados: Iterator para Contador | `struct / iterator` | [View Code](examples/nivel2/n2_09_iterador_personalizados.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Peekable: mirar sin consumir | `peekable` | [View Code](examples/nivel2/n2_10_peekable_mirar.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Chain: unir iteradores | `chain` | [View Code](examples/nivel2/n2_11_chain_unir_iteradores.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Cycle: patrón alterno | `cycle` | [View Code](examples/nivel2/n2_12_cycle_patr_n.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Partition: separar en dos listas | `partition` | [View Code](examples/nivel2/n2_13_partition_separar.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Find vs Position | `find / position` | [View Code](examples/nivel2/n2_14_find_vs_position.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Lazy Evaluation: nada hasta consumir | `collect / lazy` | [View Code](examples/nivel2/n2_15_lazy_evaluation.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Any y All: cortocircuito | `any / all` | [View Code](examples/nivel2/n2_16_any_all_cortocircuito.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | String parsing funcional: CSV | `string` | [View Code](examples/nivel2/n2_17_string_parsing.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Option Iter: flatten | `option / vec` | [View Code](examples/nivel2/n2_18_option_iter_flatten.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Windows: ventana deslizante | `windows` | [View Code](examples/nivel2/n2_19_windows_ventana.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Cow: Clone on Write | `borrow / clone` | [View Code](examples/nivel2/n2_20_cow_clone_on.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |

</details>

<details>
	<summary><h3><strong><code>03 :: Smart Pointers & Datos</code></strong></h3></summary>

| Status | Exercise | Topic | Source | Live Demo |
|---|---|---|---|---|
| ◻ | Box: estructura recursiva | `box` | [View Code](examples/nivel3/n3_01_box_estructura.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Deref Trait: smart pointer propio | `struct / trait` | [View Code](examples/nivel3/n3_02_deref_trait_smart.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Drop Trait: destructor personalizado | `trait / drop` | [View Code](examples/nivel3/n3_03_drop_trait_destructor.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Rc: propiedad compartida | `thread` | [View Code](examples/nivel3/n3_04_rc_propiedad_compartida.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | RefCell: interior mutability | `refcell` | [View Code](examples/nivel3/n3_05_refcell_interior.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Weak: romper ciclos | `weak` | [View Code](examples/nivel3/n3_06_weak_romper_ciclos.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Arc: atomic reference counting | `arc / atomic` | [View Code](examples/nivel3/n3_07_arc_atomic_reference.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Mutex: proteger dato compartido | `mutex` | [View Code](examples/nivel3/n3_08_mutex_proteger.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | RwLock: muchos lectores/un escritor | `mutex / rwlock` | [View Code](examples/nivel3/n3_09_rwlock_muchos.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Cell: mutación interior en Copy | `copy / refcell` | [View Code](examples/nivel3/n3_10_cell_mutaci_n.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Árbol binario: Option<Box<Node>> | `option / box` | [View Code](examples/nivel3/n3_11_rbol_binario.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Double Linked List: boss final | `refcell / unsafe` | [View Code](examples/nivel3/n3_12_double_enlazada.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Graphs con indices: arena allocation | `vec` | [View Code](examples/nivel3/n3_13_graphs_indices.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Generics en Structs: Punto<T> | `struct` | [View Code](examples/nivel3/n3_14_generics_struct.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Trait Bounds: Display + PartialOrd | `trait / display` | [View Code](examples/nivel3/n3_15_trait_bounds.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | PhantomData: ownership fantasma | `ownership / phantomdata` | [View Code](examples/nivel3/n3_16_phantomdata_propiedad.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Builder Pattern | `builder` | [View Code](examples/nivel3/n3_17_builder_pattern_1_1.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Newtype Pattern: Metros(u32) | `newtype` | [View Code](examples/nivel3/n3_18_newtype_pattern.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Sized vs ?Sized: trait objects | `trait / box` | [View Code](examples/nivel3/n3_19_sized_vs_sized.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Static lifetime: static vs const | `lifetime` | [View Code](examples/nivel3/n3_20_static_lifetime.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |

</details>

<details>
	<summary><h3><strong><code>04 :: Concurrencia & Async</code></strong></h3></summary>

| Status | Exercise | Topic | Source | Live Demo |
|---|---|---|---|---|
| ◻ | Spawn threads: 10 hilos + join | `spawn` | [View Code](examples/nivel4/n4_01_spawn_threads_10.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Move closures en hilos | `move / closures` | [View Code](examples/nivel4/n4_02_mover_closure.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Canales MPSC: productor-consumidor | `mpsc / canales` | [View Code](examples/nivel4/n4_03_canales_mpsc.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Deadlock intencional | `mutex / deadlock` | [View Code](examples/nivel4/n4_04_deadlock_intencional.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Condvar: esperar señal | `condvar` | [View Code](examples/nivel4/n4_05_condvar_esperar.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Barrier: sincronizar 5 hilos | `barrier` | [View Code](examples/nivel4/n4_06_barrier_sincronizar.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Atomic types: contador global | `atomic / contador` | [View Code](examples/nivel4/n4_07_atomic_types.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Rayon: paralelismo de datos | `rayon` | [View Code](examples/nivel4/n4_08_rayon_paralelismo.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Send y Sync: tipo no-Send | `send / sync` | [View Code](examples/nivel4/n4_09_send_sync_tipo.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Scoped threads: thread::scope | `scoped / threads` | [View Code](examples/nivel4/n4_10_scoped_hilos.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Async hello: función async + runtime | `async` | [View Code](examples/nivel4/n4_11_async_hello_funci.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Await: dos llamadas async secuenciales | `await / async` | [View Code](examples/nivel4/n4_12_await_dos_llamadas.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Select!: esperar primera promesa | `select / future` | [View Code](examples/nivel4/n4_13_select_esperar.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Async streams: while let | `streams / async` | [View Code](examples/nivel4/n4_14_async_streams.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Tokio tasks: miles de tasks | `tokio` | [View Code](examples/nivel4/n4_15_tokio_tasks_miles.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Actor pattern: canales | `actor` | [View Code](examples/nivel4/n4_16_actor_pattern.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Shared state async: Arc<Mutex<HashMap>> | `shared / state` | [View Code](examples/nivel4/n4_17_shared_state.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Pinning: por qué se necesita Pin | `pin / future` | [View Code](examples/nivel4/n4_18_pinning_qu_necesita.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Futures manuales: implementar Future | `trait / future` | [View Code](examples/nivel4/n4_19_futures_manuales.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Graceful shutdown: Ctrl+C | `shutdown` | [View Code](examples/nivel4/n4_20_graceful_shutdown.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |

</details>

<details>
	<summary><h3><strong><code>05 :: Sistemas & Low-Level</code></strong></h3></summary>

| Status | Exercise | Topic | Source | Live Demo |
|---|---|---|---|---|
| ◻ | FFI (C to Rust): extern "C" | `ffi` | [View Code](examples/nivel5/n5_01_ffi_c_to.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | FFI (Rust to C): llamar abs de C | `ffi` | [View Code](examples/nivel5/n5_02_ffi_rust_to.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Unsafe pointer dereference | `unsafe` | [View Code](examples/nivel5/n5_03_unsafe_pointer.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Union: interpretar bytes como f32/u32 | `union` | [View Code](examples/nivel5/n5_04_union_interpretar.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Macro declarativa: vec_strs! | `macro` | [View Code](examples/nivel5/n5_05_macro_declarativa.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Macro procedural (derive) esqueleto | `macro` | [View Code](examples/nivel5/n5_06_macro_procedural.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Custom allocator: jemalloc | `allocator` | [View Code](examples/nivel5/n5_07_custom_allocator.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | SIMD portable | `simd` | [View Code](examples/nivel5/n5_08_simd_portable_1_1.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Memory layout: repr(C)/repr(packed) | `repr` | [View Code](examples/nivel5/n5_09_memory_layout.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Mmap: mapear archivo gigante | `mmap` | [View Code](examples/nivel5/n5_10_mmap_mapear_archivo.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Serialization manual: JSON sin macros | `json` | [View Code](examples/nivel5/n5_11_serialization_manual.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | TCP listener non-blocking | `tcp` | [View Code](examples/nivel5/n5_12_tcp_listener.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | UDP packet parsing: DNS | `udp` | [View Code](examples/nivel5/n5_13_udp_packet_parsing.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | eBPF: estructura básica (concepto) | `ebpf` | [View Code](examples/nivel5/n5_14_ebpf_estructura.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Embedded: no_std | `no_std` | [View Code](examples/nivel5/n5_15_embedded_no_std.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Error handling global: AppError | `errors` | [View Code](examples/nivel5/n5_16_error_handling.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Plugin system: cargar .so/.dll | `plugins` | [View Code](examples/nivel5/n5_17_plugin_system.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Zero-copy parser: devolver &str | `zero-copy` | [View Code](examples/nivel5/n5_18_zero_copy_parser.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Ring buffer: lock-free | `ring-buffer` | [View Code](examples/nivel5/n5_19_ring_buffer_lock.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |
| ◻ | Reto final: mini shell con pipes | `shell` | [View Code](examples/nivel5/n5_20_reto_final_mini.rs) | <a href="https://www.onlinegdb.com/" target="_blank" rel="noopener noreferrer">▶️ Run (GDB)</a> |

</details>
