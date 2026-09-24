include("poincare_section_cross.jl")
using Test
using .PoincareSection

@testset "poincare_section_cross tests" begin
    @test isapprox(plane_crossing_detected(-1.0, 1.0), 1.0, atol=1e-7)
end
