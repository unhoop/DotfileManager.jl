using Documenter, DotfileManager

makedocs(;
    modules=[DotfileManager],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/unhoop/DotfileManager.jl/blob/{commit}{path}#L{line}",
    sitename="DotfileManager.jl",
    authors="Orestis Ousoultzoglou & Stavros Filosidis",
    assets=String[],
)

deploydocs(;
    repo="github.com/unhoop/DotfileManager.jl",
)
