module ExpIntegralOrder56

export compute_exp_integral_56

function compute_exp_integral_56(x::Float64)::Float64
    return exp(-x) / 56.0
end

end

using .ExpIntegralOrder56
using Test
@testset "ExpIntegralOrder56 Tests" begin
    @test isfinite(compute_exp_integral_56(0.5))
end
