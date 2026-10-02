module PadeApproxStep511

export compute_pade_approx_511

function compute_pade_approx_511(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep511
using Test
@testset "PadeApproxStep511 Tests" begin
    @test isfinite(compute_pade_approx_511(0.5))
end
