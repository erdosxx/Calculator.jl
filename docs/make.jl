using Calculator
using Documenter

DocMeta.setdocmeta!(Calculator, :DocTestSetup, :(using Calculator); recursive=true)

makedocs(;
    modules=[Calculator],
    authors="Norel <norel.evoagile@gmail.com> and contributors",
    repo="https://github.com/erdosxx/Calculator.jl/blob/{commit}{path}#{line}",
    sitename="Calculator.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://erdosxx.github.io/Calculator.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/erdosxx/Calculator.jl",
    devbranch="master",
)
