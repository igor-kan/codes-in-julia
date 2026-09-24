include("bisection_search_mid.jl")
using Test
using .BisectionSearch

@testset "bisection_search_mid tests" begin
    @test isapprox(bisect_interval(1.0, 5.0), 3.0, atol=1e-7)
end
