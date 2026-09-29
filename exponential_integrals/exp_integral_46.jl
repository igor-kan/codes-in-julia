module ExpIntegralOrder46

export compute_exp_integral_46

function compute_exp_integral_46(x::Float64)::Float64
    return exp(-x) / 46.0
end

end

using .ExpIntegralOrder46
using Test
@testset "ExpIntegralOrder46 Tests" begin
    @test isfinite(compute_exp_integral_46(0.5))
end
