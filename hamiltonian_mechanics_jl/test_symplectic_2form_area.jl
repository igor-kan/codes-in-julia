include("symplectic_2form_area.jl")
using Test
using .SymplecticArea

@testset "symplectic_2form_area tests" begin
    @test isapprox(canonical_area(2.0, 3.0), 6.0, atol=1e-7)
end
