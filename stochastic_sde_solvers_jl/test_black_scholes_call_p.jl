include("black_scholes_call_p.jl")
using Test
using .BlackScholes

@testset "black_scholes_call_p tests" begin
    @test isapprox(call_lower_bound(100.0, 90.0, 0.0, 1.0), 10.0, atol=1e-7)
end
