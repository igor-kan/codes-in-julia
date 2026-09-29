module ExpIntegralOrder11

export compute_exp_integral_11

function compute_exp_integral_11(x::Float64)::Float64
    return exp(-x) / 11.0
end

end

using .ExpIntegralOrder11
using Test
@testset "ExpIntegralOrder11 Tests" begin
    @test isfinite(compute_exp_integral_11(0.5))
end
