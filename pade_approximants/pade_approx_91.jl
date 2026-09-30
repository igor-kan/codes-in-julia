module PadeApproxStep91

export compute_pade_approx_91

function compute_pade_approx_91(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep91
using Test
@testset "PadeApproxStep91 Tests" begin
    @test isfinite(compute_pade_approx_91(0.5))
end
