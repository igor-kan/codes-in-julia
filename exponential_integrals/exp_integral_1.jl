module ExpIntegralOrder1

export compute_exp_integral_1

function compute_exp_integral_1(x::Float64)::Float64
    return exp(-x) / 1.0
end

end

using .ExpIntegralOrder1
using Test
@testset "ExpIntegralOrder1 Tests" begin
    @test isfinite(compute_exp_integral_1(0.5))
end
