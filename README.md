# CHomP.jl

This package is a julia wrapper around the Computational Homology Project (CHomP) with python bindings. The wrapper is very barebones, really it just provides a way to call 

```julia
using CHomP
```

and have [pychomp2](https://pypi.org/project/pychomp2/) be available for use (via [PyCall.jl](https://github.com/JuliaPy/PyCall.jl)). 

If you are a fellow mathematician or computer scientist and want to create a true julia implementation of CHomP, please contact April Herwig (via `April-Hannah-Lena` on GitHub or `april.herwig@tum.de`), I will happily transfer ownership rights of this package to you. 

## Installation and Usage

To install CHomP.jl, call 

```julia
] add https://github.com/April-Hannah-Lena/CHomP.jl.git
build CHomP
```

One can now use CHomP.jl through PyCall.jl, which is automatically exported by CHomP.jl

```julia
using CHomP
```

The `PyObject` `chomp`is made available to the namespace (via `pyimport`). 
