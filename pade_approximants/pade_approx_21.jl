module PadeApproxStep21

export compute_pade_approx_21

function compute_pade_approx_21(x::Float64)::Float64
    return (1.0 + x * 1.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep21
using Test
@testset "PadeApproxStep21 Tests" begin
    @test isfinite(compute_pade_approx_21(0.5))
end
