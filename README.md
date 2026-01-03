# Portafolio Rust

Propósito
---------
Este repositorio recopila ejercicios en Rust organizados por niveles de aprendizaje. El objetivo es **exponer mi avance** conforme voy profundizando en el lenguaje (ownership, iteradores, smart pointers, concurrencia, async y temas low-level).

## Ejecutar ejercicios (menú interactivo)

En la terminal:

```sh
./menu.sh
```

Si por alguna razón no puede ejecutarse:

```sh
bash menu.sh
```

## Ejecutar un ejercicio (directo con Cargo)

Los ejercicios están en `./examples`.

```sh
cargo run --example n1_01_enums_con_datos_ipaddr
```

## Estructura

- `examples/` → ejercicios autocontenidos (1 archivo por ejercicio)
- `src/lib.rs` → utilidades compartidas opcionales (helpers)

## Nota sobre crates externos

Algunos ejercicios mencionan crates comunes en entrevistas/proyectos (por ejemplo: `tokio`, `rayon`, `thiserror`). Cuando decida avanzar en esos ejercicios, agregaré dependencias en `Cargo.toml`.

## Lista de ejercicios (planeados)

Leyenda

- **[COMPLETADO]**: ya implementado y ejecutable.
- **[PENDIENTE]**: aún no implementado.

Nivel 1: El "Borrow Checker" y Tipado Fuerte (1-20)

- **[PENDIENTE]** Enums con Datos: Enum IpAddr (V4/V6).
- **[PENDIENTE]** Manejo de Errores (Result): división segura.
- **[PENDIENTE]** Option Chaining: map + and_then.
- **[PENDIENTE]** Ownership Move: consumir String y devolverlo.
- **[PENDIENTE]** Borrowing (Referencias): longitud sin tomar ownership.
- **[PENDIENTE]** Slices de String: primera palabra (slices &str).
- **[PENDIENTE]** Structs con Métodos: Rectangulo (area + constructor).
- **[PENDIENTE]** Pattern Matching Avanzado: match tupla.
- **[PENDIENTE]** If Let: refactorizar match.
- **[PENDIENTE]** Vectores y Capacidad: with_capacity y reasignación.
- **[PENDIENTE]** HashMaps de Conteo: entry().or_insert().
- **[PENDIENTE]** Panic Controlado: estado inconsistente.
- **[PENDIENTE]** Shadowing: string -> número.
- **[PENDIENTE]** Loops con Etiquetas: 'outer/'inner.
- **[PENDIENTE]** Traits Derivados: Debug/PartialEq/Clone.
- **[PENDIENTE]** Copy vs Clone: int vs String.
- **[PENDIENTE]** From/Into Traits: implementar From<&str>.
- **[PENDIENTE]** Custom Display: std::fmt::Display.
- **[PENDIENTE]** Lifetimes Básicos: devolver la referencia más larga.
- **[PENDIENTE]** Unit Testing: #[cfg(test)].

Nivel 2: Programación Funcional e Iteradores (21-40)

- **[PENDIENTE]** Map y Filter: elevar pares al cuadrado y sumar.
- **[PENDIENTE]** Fold (Reduce): suma con .fold().
- **[PENDIENTE]** Zip: dos vectores -> HashMap.
- **[PENDIENTE]** Iteradores Infinitos: primos ingenuos + take(5).
- **[PENDIENTE]** FlatMap: aplanar Vec<Vec<i32>>.
- **[PENDIENTE]** Collect: Vec/HashSet/LinkedList con turbofish.
- **[PENDIENTE]** Closures (Fn/FnMut/FnOnce): closure como parámetro.
- **[PENDIENTE]** Captura de Entorno: closure que modifica variable.
- **[PENDIENTE]** Iteradores Personalizados: implementar Iterator.
- **[PENDIENTE]** Peekable Iterator.
- **[PENDIENTE]** Chain: unir iteradores sin copiar.
- **[PENDIENTE]** Cycle: patrón alterno.
- **[PENDIENTE]** Partition: separar en dos listas.
- **[PENDIENTE]** Find vs Position.
- **[PENDIENTE]** Lazy Evaluation.
- **[PENDIENTE]** Any y All.
- **[PENDIENTE]** String parsing funcional: CSV.
- **[PENDIENTE]** Option Iter: flatten.
- **[PENDIENTE]** Windows: ventana deslizante.
- **[PENDIENTE]** Cow (Clone on Write).

Nivel 3: Punteros Inteligentes y Estructuras de Datos (41-60)

- **[PENDIENTE]** Box: estructura recursiva.
- **[PENDIENTE]** Deref Trait: smart pointer propio.
- **[PENDIENTE]** Drop Trait: destructor personalizado.
- **[PENDIENTE]** Rc: propiedad compartida single-thread.
- **[PENDIENTE]** RefCell: interior mutability.
- **[PENDIENTE]** Weak: romper ciclos Rc.
- **[PENDIENTE]** Arc: compartir entre hilos.
- **[PENDIENTE]** Mutex.
- **[PENDIENTE]** RwLock.
- **[PENDIENTE]** Cell.
- **[PENDIENTE]** Árbol Binario: Option<Box<Node>>.
- **[PENDIENTE]** Double Linked List.
- **[PENDIENTE]** Graphs con indices (arena).
- **[PENDIENTE]** Generics en Structs: Punto<T>.
- **[PENDIENTE]** Trait Bounds: Display + PartialOrd.
- **[PENDIENTE]** PhantomData.
- **[PENDIENTE]** Builder Pattern.
- **[PENDIENTE]** Newtype Pattern: Metros(u32).
- **[PENDIENTE]** Sized vs ?Sized: trait objects.
- **[PENDIENTE]** Static lifetime: static vs const.

Nivel 4: Concurrencia y Async (61-80)

- **[PENDIENTE]** Spawn Threads: 10 hilos + join.
- **[PENDIENTE]** Move closures en hilos.
- **[PENDIENTE]** Canales (MPSC).
- **[PENDIENTE]** Deadlock intencional.
- **[PENDIENTE]** Condvar.
- **[PENDIENTE]** Barrier.
- **[PENDIENTE]** Atomic Types: contador global.
- **[PENDIENTE]** Rayon: par_iter (requiere crate).
- **[PENDIENTE]** Send y Sync.
- **[PENDIENTE]** Scoped Threads: thread::scope.
- **[PENDIENTE]** Async Hello (runtime).
- **[PENDIENTE]** Await secuencial.
- **[PENDIENTE]** Select! (Async).
- **[PENDIENTE]** Async Streams.
- **[PENDIENTE]** Tokio Tasks.
- **[PENDIENTE]** Actor Pattern.
- **[PENDIENTE]** Shared State Async.
- **[PENDIENTE]** Pinning.
- **[PENDIENTE]** Futures manuales.
- **[PENDIENTE]** Graceful Shutdown.

Nivel 5: Arquitectura, Sistemas y Low-Level (81-100)

- **[PENDIENTE]** FFI (C to Rust).
- **[PENDIENTE]** FFI (Rust to C).
- **[PENDIENTE]** Unsafe pointer dereference.
- **[PENDIENTE]** Union (bit casting).
- **[PENDIENTE]** Macro declarativa: vec_strs!.
- **[PENDIENTE]** Macro procedural (derive) esqueleto.
- **[PENDIENTE]** Custom allocator.
- **[PENDIENTE]** SIMD (portable).
- **[PENDIENTE]** Memory layout: repr(C)/repr(packed).
- **[PENDIENTE]** Mmap.
- **[PENDIENTE]** Serialization manual (JSON sin macros).
- **[PENDIENTE]** TCP Listener (non-blocking).
- **[PENDIENTE]** UDP packet parsing (DNS).
- **[PENDIENTE]** eBPF (contexto).
- **[PENDIENTE]** Embedded (no_std).
- **[PENDIENTE]** Error Handling global (AppError).
- **[PENDIENTE]** Plugin system (.so/.dll).
- **[PENDIENTE]** Zero-copy parser.
- **[PENDIENTE]** Ring buffer (lock-free).
- **[PENDIENTE]** Reto final: mini shell con pipes.
