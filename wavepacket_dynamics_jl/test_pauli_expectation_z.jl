include("pauli_expectation_z.jl")
using Test
using .PauliSpin

@testset "pauli_expectation_z tests" begin
    @test isapprox(pauli_z_exp(1.0, 0.0), 1.0, atol=1e-7)
end
