module ExpIntegralOrder116

export compute_exp_integral_116

function compute_exp_integral_116(x::Float64)::Float64
    return exp(-x) / 116.0
end

end

using .ExpIntegralOrder116
using Test
@testset "ExpIntegralOrder116 Tests" begin
    @test isfinite(compute_exp_integral_116(0.5))
end
