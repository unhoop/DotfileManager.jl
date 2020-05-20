using DotfileManager
using Test

@testset "DotfileManager.jl" begin
    # Was Aristotle right?
	@test getA() == :A
end
