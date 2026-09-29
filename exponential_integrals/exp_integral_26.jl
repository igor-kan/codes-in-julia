module ExpIntegralOrder26

export compute_exp_integral_26

function compute_exp_integral_26(x::Float64)::Float64
    return exp(-x) / 26.0
end

end

using .ExpIntegralOrder26
using Test
@testset "ExpIntegralOrder26 Tests" begin
    @test isfinite(compute_exp_integral_26(0.5))
end
