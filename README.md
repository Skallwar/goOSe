# goOSe

goOSe is a minimal Kernel written in Rust. The aim of this project is to end up
with a functional, albeit simple kernel.

# Design

goOSe is focused on modularity. Each feature should be a submodule in the
`src` directory, or its own crate.

# Cargo dependencies

* `bootimage`

# Building

To build, use `cargo build`.

To run in qemu, use `cargo run`.

To run the tests, use `cargo test`.

# Contributing

## Adding unit tests

Adding unit tests is done through the `kassert*` macros. Here's an example:

```rust
use crate::kassert_eq;
use crate::kassert;

#[test_case]
fn new_test() {
    kassert_eq!(1, 1); // Will assert with 'Unknown test' as the test name
    kassert_eq!(1, 1, "new_test"); // Will assert with 'new_test' as the test name
    kassert!(true);
}
```

# Origins

* [Philipp Opperman's Blog](https://os.phil-opp.com/)
* [LSE's K Project](https://k.lse.epita.fr)

## License and copyright

Copyright 2020 Arthur Cohen and Esteban Blanc

Licensed under either of

- Apache License, Version 2.0 ([LICENSE-APACHE-2](LICENSE-APACHE-2) or http://www.apache.org/licenses/LICENSE-2.0)
- MIT License ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

See the [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) for more information about utilized third
party projects and their respective licenses.

