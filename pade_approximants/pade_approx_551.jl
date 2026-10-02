module PadeApproxStep551

export compute_pade_approx_551

function compute_pade_approx_551(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep551
using Test
@testset "PadeApproxStep551 Tests" begin
    @test isfinite(compute_pade_approx_551(0.5))
end
