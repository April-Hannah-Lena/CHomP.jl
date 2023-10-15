# CHomP.jl

This package is a julia wrapper around the Computational Homology Project (CHomP) with python bindings. The wrapper is very barebones, really it just provides a way to call 

```julia
using CHomP
```

and have [pychomp2](https://pypi.org/project/pychomp2/) and [Conley-Morse Graph Database (cmgdb)](https://pypi.org/project/CMGDB/), be available for use (via [PyCall.jl](https://github.com/JuliaPy/PyCall.jl)). 

If you are a fellow mathematician or computer scientist and want to create a true julia implementation of CHomP, please contact April Herwig (via `April-Hannah-Lena` on GitHub or `april.herwig@tum.de`), I will happily transfer ownership rights of this package to you. 

## C Dependencies

The following are required to build and run CHomP.jl:

* a modern C++ compiler ([gcc](https://gcc.gnu.org/), [clang](https://clang.llvm.org/), etc. Anything except Windows already has this built in)
* [python 3](https://www.python.org/)
* [pip for python 3](https://pip.pypa.io/en/stable/installation/)
* [cmake](https://cmake.org/) (apt-get install cmake on debian)
* [boost](https://www.boost.org/) (apt-get install libboost-dev on debian)
* [GMP](https://gmplib.org/) (needed for gcc so you likely have it installed already)
* [Succinct Data Structure Library (SDSL)](https://github.com/simongog/sdsl-lite)

The following are not required to build CHomP.jl but are still required for some functionalities:

* [jupyter](https://jupyter.org/install)
* [graphviz](https://graphviz.org/)
* [CImg](https://github.com/GreycLab/CImg)

CHomP.jl also requires julia 1.7 or later. 

## Installation

If you are running on a linux system, it is recommended (though not necessary) to call

```julia
ENV["PYTHON"] = ""  # optional, just tells julia to use a separate, isolated python distribution
```

To install CHomP.jl, call 

```julia
] add CHomP
```

Upon first install, this will run a build process, which downloads and installs the pypi pakages pychomp2 and cmgdb. After any updates to python, PyCall.jl, Conda.jl, or CHomP.jl, it is recommended (though probably not necessary) to rebuild: 

```julia
build CHomP
```

## Usage

One can now use CHomP.jl through PyCall.jl, which is automatically exported by CHomP.jl

```julia
using CHomP
```

(you do not need to call `using PyCall`)

The python modules `pychomp`, `cmgdb`, are then made available to the namespace (via `pyimport`). 

```julia
julia> pychomp
PyObject <module 'pychomp2' from '/home/runner/.local/lib/python3.8/site-packages/pychomp2/__init__.py'>

julia> betti_nrs = pychomp.CubicalHomology([
            # cubical set representing a 2-dimensional square with a hole punched in the middle
            [0, 0],
            [0, 1],
            [0, 2],
            [1, 0],
            [1, 2],
            [2, 0],
            [2, 1],
            [2, 2]
        ])

3-element Vector{Int64}:
 1
 1
 0
```

## Troubleshooting

Ensure that the dependencies are accessible in your systems PATH environment variable. 

The python instance created by PyCall.jl should include the packages `sys` and `subprocess`. If `pip` is available in your PATH, then a failed build step is most likely an issue with PyCall.jl. See for reference [PyCall.jl's torubleshooting section](https://github.com/JuliaPy/PyCall.jl#troubleshooting) or the [PyCalll.jl issues page](https://github.com/JuliaPy/PyCall.jl/issues). 

If a problem occurs that seems to bee related to julia, open an issue in the [CHomP.jl package repository on GitHub](https://github.com/April-Hannah-Lena/CHomP.jl/issues). 

If a problem occurs that seems to be related to chomp (resp. pychomp2 or the original C++ chomp), open an issue in the chomp repository on Github (resp. [pychomp2](https://pypi.org/project/pychomp2/issues) or [chomp](https://github.com/shaunharker/CHomP/issues)). 
