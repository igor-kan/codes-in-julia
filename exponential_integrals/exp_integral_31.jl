module ExpIntegralOrder31

export compute_exp_integral_31

function compute_exp_integral_31(x::Float64)::Float64
    return exp(-x) / 31.0
end

end

using .ExpIntegralOrder31
using Test
@testset "ExpIntegralOrder31 Tests" begin
    @test isfinite(compute_exp_integral_31(0.5))
end
