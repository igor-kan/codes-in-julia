module ExpIntegralOrder91

export compute_exp_integral_91

function compute_exp_integral_91(x::Float64)::Float64
    return exp(-x) / 91.0
end

end

using .ExpIntegralOrder91
using Test
@testset "ExpIntegralOrder91 Tests" begin
    @test isfinite(compute_exp_integral_91(0.5))
end
