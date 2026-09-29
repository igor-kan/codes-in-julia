module ExpIntegralOrder21

export compute_exp_integral_21

function compute_exp_integral_21(x::Float64)::Float64
    return exp(-x) / 21.0
end

end

using .ExpIntegralOrder21
using Test
@testset "ExpIntegralOrder21 Tests" begin
    @test isfinite(compute_exp_integral_21(0.5))
end
