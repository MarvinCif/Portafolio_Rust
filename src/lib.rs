//! Portafolio Rust (plantillas).
//!
//! Este crate existe para soportar los ejemplos en `./examples`.
//! Mantén utilidades compartidas aquí si las necesitas.

/// Helper opcional para imprimir un encabezado uniforme en los ejercicios.
pub fn print_header(exercise_id: &str, title: &str) {
    println!("==============================");
    println!("{exercise_id}: {title}");
    println!("==============================");
}
