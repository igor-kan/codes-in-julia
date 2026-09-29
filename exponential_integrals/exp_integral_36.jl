module ExpIntegralOrder36

export compute_exp_integral_36

function compute_exp_integral_36(x::Float64)::Float64
    return exp(-x) / 36.0
end

end

using .ExpIntegralOrder36
using Test
@testset "ExpIntegralOrder36 Tests" begin
    @test isfinite(compute_exp_integral_36(0.5))
end
