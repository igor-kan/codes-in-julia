module PadeApproxStep536

export compute_pade_approx_536

function compute_pade_approx_536(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep536
using Test
@testset "PadeApproxStep536 Tests" begin
    @test isfinite(compute_pade_approx_536(0.5))
end
