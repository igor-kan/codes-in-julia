module PadeApproxStep81

export compute_pade_approx_81

function compute_pade_approx_81(x::Float64)::Float64
    return (1.0 + x * 1.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep81
using Test
@testset "PadeApproxStep81 Tests" begin
    @test isfinite(compute_pade_approx_81(0.5))
end
