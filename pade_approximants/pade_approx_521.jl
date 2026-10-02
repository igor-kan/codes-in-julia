module PadeApproxStep521

export compute_pade_approx_521

function compute_pade_approx_521(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep521
using Test
@testset "PadeApproxStep521 Tests" begin
    @test isfinite(compute_pade_approx_521(0.5))
end
