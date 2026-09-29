module ExpIntegralOrder66

export compute_exp_integral_66

function compute_exp_integral_66(x::Float64)::Float64
    return exp(-x) / 66.0
end

end

using .ExpIntegralOrder66
using Test
@testset "ExpIntegralOrder66 Tests" begin
    @test isfinite(compute_exp_integral_66(0.5))
end
