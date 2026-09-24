include("hamiltonian_energy_h.jl")
using Test
using .HamiltonianH

@testset "hamiltonian_energy_h tests" begin
    @test isapprox(total_energy(4.0, 6.0), 10.0, atol=1e-7)
end
