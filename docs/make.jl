using CHomP
using Documenter

DocMeta.setdocmeta!(CHomP, :DocTestSetup, :(using CHomP); recursive=true)

makedocs(;
    modules=[CHomP],
    authors="April Herwig <aprillherwig@gmail.com> and contributors",
    repo="https://github.com/April-Hannah-Lena/CHomP.jl/blob/{commit}{path}#{line}",
    sitename="CHomP.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://April-Hannah-Lena.github.io/CHomP.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/April-Hannah-Lena/CHomP.jl",
    devbranch="main",
)
