include("brent_quadratic_root.jl")
using Test
using .BrentRoot

@testset "brent_quadratic_root tests" begin
    @test isapprox(inverse_quadratic(3.0), 3.0, atol=1e-7)
end
