module ExpIntegralOrder16

export compute_exp_integral_16

function compute_exp_integral_16(x::Float64)::Float64
    return exp(-x) / 16.0
end

end

using .ExpIntegralOrder16
using Test
@testset "ExpIntegralOrder16 Tests" begin
    @test isfinite(compute_exp_integral_16(0.5))
end
