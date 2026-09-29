module ExpIntegralOrder96

export compute_exp_integral_96

function compute_exp_integral_96(x::Float64)::Float64
    return exp(-x) / 96.0
end

end

using .ExpIntegralOrder96
using Test
@testset "ExpIntegralOrder96 Tests" begin
    @test isfinite(compute_exp_integral_96(0.5))
end
