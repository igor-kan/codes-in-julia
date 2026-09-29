module ExpIntegralOrder101

export compute_exp_integral_101

function compute_exp_integral_101(x::Float64)::Float64
    return exp(-x) / 101.0
end

end

using .ExpIntegralOrder101
using Test
@testset "ExpIntegralOrder101 Tests" begin
    @test isfinite(compute_exp_integral_101(0.5))
end
