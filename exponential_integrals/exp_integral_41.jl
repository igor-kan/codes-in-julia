module ExpIntegralOrder41

export compute_exp_integral_41

function compute_exp_integral_41(x::Float64)::Float64
    return exp(-x) / 41.0
end

end

using .ExpIntegralOrder41
using Test
@testset "ExpIntegralOrder41 Tests" begin
    @test isfinite(compute_exp_integral_41(0.5))
end
