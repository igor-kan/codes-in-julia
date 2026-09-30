module PadeApproxStep101

export compute_pade_approx_101

function compute_pade_approx_101(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep101
using Test
@testset "PadeApproxStep101 Tests" begin
    @test isfinite(compute_pade_approx_101(0.5))
end
