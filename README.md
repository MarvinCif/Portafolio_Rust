# Portafolio Rust

Portafolio público de ejercicios en Rust, organizado por niveles (1–5). **Este repo contiene plantillas**: los ejercicios NO están resueltos; están listos para que tú los implementes.

## Ejecutar un ejercicio

Todos los ejercicios están en `./examples`.

- Listar/ejecutar con menú interactivo:

```sh
./menu.sh
```

- Ejecutar uno directamente con Cargo:

```sh
cargo run --example n1_01_enums_con_datos_ipaddr
```

## Estructura

- `examples/` → 100 ejercicios (1 archivo por ejercicio)
- `src/lib.rs` → utilidades compartidas opcionales (si quieres reutilizar helpers)

## Nota sobre crates externos

Algunos ejercicios mencionan crates como `tokio`, `rayon`, `thiserror`, o `serde`. Las plantillas dejan comentarios indicando qué agregar a `Cargo.toml` cuando decidas resolverlos.

## Lista de ejercicios (1–100)

Los nombres de archivo siguen el formato `n{nivel}_{numero}_{slug}.rs`.

- Nivel 1 (1–20): Borrow Checker y tipado fuerte
- Nivel 2 (21–40): Programación funcional e iteradores
- Nivel 3 (41–60): Punteros inteligentes y estructuras de datos
- Nivel 4 (61–80): Concurrencia y async
- Nivel 5 (81–100): Arquitectura, sistemas y low-level

