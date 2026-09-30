module PadeApproxStep121

export compute_pade_approx_121

function compute_pade_approx_121(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep121
using Test
@testset "PadeApproxStep121 Tests" begin
    @test isfinite(compute_pade_approx_121(0.5))
end
