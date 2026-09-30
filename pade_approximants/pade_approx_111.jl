module PadeApproxStep111

export compute_pade_approx_111

function compute_pade_approx_111(x::Float64)::Float64
    return (1.0 + x * 1.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep111
using Test
@testset "PadeApproxStep111 Tests" begin
    @test isfinite(compute_pade_approx_111(0.5))
end
