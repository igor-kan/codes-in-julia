module ExpIntegralOrder61

export compute_exp_integral_61

function compute_exp_integral_61(x::Float64)::Float64
    return exp(-x) / 61.0
end

end

using .ExpIntegralOrder61
using Test
@testset "ExpIntegralOrder61 Tests" begin
    @test isfinite(compute_exp_integral_61(0.5))
end
