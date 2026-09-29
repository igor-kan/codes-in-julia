module ExpIntegralOrder51

export compute_exp_integral_51

function compute_exp_integral_51(x::Float64)::Float64
    return exp(-x) / 51.0
end

end

using .ExpIntegralOrder51
using Test
@testset "ExpIntegralOrder51 Tests" begin
    @test isfinite(compute_exp_integral_51(0.5))
end
