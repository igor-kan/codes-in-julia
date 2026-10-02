module PadeApproxStep611

export compute_pade_approx_611

function compute_pade_approx_611(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep611
using Test
@testset "PadeApproxStep611 Tests" begin
    @test isfinite(compute_pade_approx_611(0.5))
end
