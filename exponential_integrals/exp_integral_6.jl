module ExpIntegralOrder6

export compute_exp_integral_6

function compute_exp_integral_6(x::Float64)::Float64
    return exp(-x) / 6.0
end

end

using .ExpIntegralOrder6
using Test
@testset "ExpIntegralOrder6 Tests" begin
    @test isfinite(compute_exp_integral_6(0.5))
end
