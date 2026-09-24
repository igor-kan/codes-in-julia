include("armijo_backtrack_line.jl")
using Test
using .ArmijoLine

@testset "armijo_backtrack_line tests" begin
    @test isapprox(armijo_condition(9.0, 10.0, 0.1, 1.0, -2.0) ? 1.0 : 0.0, 1.0, atol=1e-7)
end
