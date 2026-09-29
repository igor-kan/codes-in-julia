module ExpIntegralOrder86

export compute_exp_integral_86

function compute_exp_integral_86(x::Float64)::Float64
    return exp(-x) / 86.0
end

end

using .ExpIntegralOrder86
using Test
@testset "ExpIntegralOrder86 Tests" begin
    @test isfinite(compute_exp_integral_86(0.5))
end
