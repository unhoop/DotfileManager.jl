import ArgParse, TOML

function parse_commandline()
    s = ArgParse.ArgParseSettings()

    ArgParse.@add_arg_table! s begin
        "--parse", "-p"
            help = "parse a dotfile configuration"
            arg_type = AbstractString
    end

    return ArgParse.parse_args(s)
end

function main()
    parsed_args = parse_commandline()
    println("Parsed args:")
    for (arg,val) in parsed_args
        println("$arg => $val")
    end

    if !isnothing(parsed_args["parse"])
        dotfile_config = TOML.parsefile(parsed_args["parse"])
        println(dotfile_config)
        TOML.print(dotfile_config)
    else
        println("no config in sight!")
    end
end
