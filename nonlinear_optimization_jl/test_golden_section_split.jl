include("golden_section_split.jl")
using Test
using .GoldenSection

@testset "golden_section_split tests" begin
    @test isapprox(golden_point(0.0, 1.0), 0.6180339887, atol=1e-7)
end
