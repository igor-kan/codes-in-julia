include("cir_feller_condition.jl")
using Test
using .CoxIngersoll

@testset "cir_feller_condition tests" begin
    @test isapprox(cir_feller_ratio(2.0, 0.05, 0.2), 5.0, atol=1e-7)
end
