using DotfileManager
using Test

@testset "ArgParse" begin
	@test DotfileManager.parse_commandline() == Dict(["parse" => nothing])
end
