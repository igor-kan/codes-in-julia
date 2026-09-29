module ExpIntegralOrder71

export compute_exp_integral_71

function compute_exp_integral_71(x::Float64)::Float64
    return exp(-x) / 71.0
end

end

using .ExpIntegralOrder71
using Test
@testset "ExpIntegralOrder71 Tests" begin
    @test isfinite(compute_exp_integral_71(0.5))
end
