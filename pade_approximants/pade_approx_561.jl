module PadeApproxStep561

export compute_pade_approx_561

function compute_pade_approx_561(x::Float64)::Float64
    return (1.0 + x * 1.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep561
using Test
@testset "PadeApproxStep561 Tests" begin
    @test isfinite(compute_pade_approx_561(0.5))
end
