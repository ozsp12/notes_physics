# Physics Lecture Notes

A structured collection of lecture notes, derivations, worked examples, and supporting material in physics.

The repository is organized by physical subject rather than by course, semester, or output format. Each individual note should be self-contained enough to compile independently while sharing a common LaTeX style and bibliography.

## Structure

```text
notes_physics/
├── notes/
│   ├── mathematical_methods/
│   ├── classical_mechanics/
│   ├── electromagnetism/
│   ├── thermodynamics_statistical_physics/
│   ├── quantum_mechanics/
│   ├── relativity_gravitation/
│   └── fluid_continuum_physics/
├── templates/
│   ├── lecture_note.tex
│   └── preamble.tex
├── references/
│   ├── README.md
│   └── references.bib
├── assets/
│   └── README.md
├── .gitignore
└── Makefile
```

## Subject index

| Area | Scope |
|---|---|
| `mathematical_methods` | Linear algebra, tensor calculus, differential equations, variational methods, functional analysis, distributions, and mathematical preliminaries. |
| `classical_mechanics` | Newtonian, Lagrangian, Hamiltonian, rigid-body, orbital, and continuum-mechanics preliminaries. |
| `electromagnetism` | Electrostatics, magnetostatics, Maxwell equations, waves, radiation, and relativistic electrodynamics. |
| `thermodynamics_statistical_physics` | Thermodynamics, kinetic theory, ensembles, phase transitions, and statistical mechanics. |
| `quantum_mechanics` | Wave mechanics, operator formalism, angular momentum, approximation methods, and quantum dynamics. |
| `relativity_gravitation` | Special relativity, differential geometry, general relativity, geodesics, Einstein equations, and relativistic applications. |
| `fluid_continuum_physics` | Hydrostatics, hydrodynamics, conservation laws, fluids, elasticity, and continuum models. |

## Convention for a note

Use one directory per coherent note:

```text
notes/<subject>/<topic>/
├── main.tex
├── figures/          # optional
├── data/             # optional
└── README.md         # optional: scope, provenance, status
```

Directory and file names should use lowercase `snake_case`. The title printed in the PDF should remain typographically normal English.

A note should normally contain: motivation and assumptions; definitions and notation; derivations with intermediate steps; physical interpretation; worked examples where appropriate; references.

## LaTeX

The common preamble is stored in `templates/preamble.tex`. `templates/lecture_note.tex` is the canonical starting point for new notes.

To compile every `main.tex` currently present under `notes/`:

```bash
make
```

To remove auxiliary LaTeX files:

```bash
make clean
```

The build uses `latexmk` and `pdflatex`.

## References

General references shared across several notes belong in `references/references.bib`. Highly specialized references may remain local to a note when that improves portability.

Bibliographic keys should be stable and descriptive, preferably `authorYYYYkeyword`, for example `wald1984general` or `goldstein2002classical`.

## Editorial principles

The repository should favor explicit derivations over formula lists. Notation must be defined before use, approximations must be stated where introduced, and conventions that can change signs or factors should be recorded explicitly. Figures, equations, tables, and references should be cross-referenced rather than duplicated.
