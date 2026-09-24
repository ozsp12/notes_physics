# Notes

Each subdirectory corresponds to a broad area of physics. A coherent derivation or teaching unit should live in its own topic directory rather than being appended to a monolithic source file.

Recommended pattern:

```text
<subject>/<topic>/main.tex
```

For example:

```text
relativity_gravitation/radial_geodesics/main.tex
fluid_continuum_physics/hydrostatic_equilibrium/main.tex
```

If a topic grows into several independent chapters, promote it to a collection with its own `README.md` and separate `main.tex` files rather than creating a single oversized source.
