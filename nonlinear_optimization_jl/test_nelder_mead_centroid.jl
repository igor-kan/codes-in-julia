include("nelder_mead_centroid.jl")
using Test
using .NelderMead

@testset "nelder_mead_centroid tests" begin
    @test isapprox(simplex_centroid_2d(2.0, 4.0), 3.0, atol=1e-7)
end
