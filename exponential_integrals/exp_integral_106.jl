module ExpIntegralOrder106

export compute_exp_integral_106

function compute_exp_integral_106(x::Float64)::Float64
    return exp(-x) / 106.0
end

end

using .ExpIntegralOrder106
using Test
@testset "ExpIntegralOrder106 Tests" begin
    @test isfinite(compute_exp_integral_106(0.5))
end
