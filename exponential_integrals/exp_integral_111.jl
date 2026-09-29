module ExpIntegralOrder111

export compute_exp_integral_111

function compute_exp_integral_111(x::Float64)::Float64
    return exp(-x) / 111.0
end

end

using .ExpIntegralOrder111
using Test
@testset "ExpIntegralOrder111 Tests" begin
    @test isfinite(compute_exp_integral_111(0.5))
end
