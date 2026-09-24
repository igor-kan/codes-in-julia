include("almgren_execution_kappa.jl")
using Test
using .AlmgrenChriss

@testset "almgren_execution_kappa tests" begin
    @test isapprox(almgren_kappa_sq(1.0, 2.0, 1.0), 4.0, atol=1e-7)
end
