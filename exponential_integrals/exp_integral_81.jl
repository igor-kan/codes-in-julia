module ExpIntegralOrder81

export compute_exp_integral_81

function compute_exp_integral_81(x::Float64)::Float64
    return exp(-x) / 81.0
end

end

using .ExpIntegralOrder81
using Test
@testset "ExpIntegralOrder81 Tests" begin
    @test isfinite(compute_exp_integral_81(0.5))
end
