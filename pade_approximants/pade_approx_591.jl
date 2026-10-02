module PadeApproxStep591

export compute_pade_approx_591

function compute_pade_approx_591(x::Float64)::Float64
    return (1.0 + x * 1.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep591
using Test
@testset "PadeApproxStep591 Tests" begin
    @test isfinite(compute_pade_approx_591(0.5))
end
