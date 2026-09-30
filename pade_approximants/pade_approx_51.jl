module PadeApproxStep51

export compute_pade_approx_51

function compute_pade_approx_51(x::Float64)::Float64
    return (1.0 + x * 1.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep51
using Test
@testset "PadeApproxStep51 Tests" begin
    @test isfinite(compute_pade_approx_51(0.5))
end
