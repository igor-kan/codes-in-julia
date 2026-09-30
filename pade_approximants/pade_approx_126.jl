module PadeApproxStep126

export compute_pade_approx_126

function compute_pade_approx_126(x::Float64)::Float64
    return (1.0 + x * 1.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep126
using Test
@testset "PadeApproxStep126 Tests" begin
    @test isfinite(compute_pade_approx_126(0.5))
end
