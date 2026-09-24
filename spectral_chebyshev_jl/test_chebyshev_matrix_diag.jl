include("chebyshev_matrix_diag.jl")
using Test
using .ChebyshevDiff

@testset "chebyshev_matrix_diag tests" begin
    @test isapprox(cheb_diag_d00(1), 0.5, atol=1e-7)
end
