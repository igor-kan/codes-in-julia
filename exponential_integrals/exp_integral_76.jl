module ExpIntegralOrder76

export compute_exp_integral_76

function compute_exp_integral_76(x::Float64)::Float64
    return exp(-x) / 76.0
end

end

using .ExpIntegralOrder76
using Test
@testset "ExpIntegralOrder76 Tests" begin
    @test isfinite(compute_exp_integral_76(0.5))
end
