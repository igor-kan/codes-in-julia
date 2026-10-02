module PadeApproxStep571

export compute_pade_approx_571

function compute_pade_approx_571(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep571
using Test
@testset "PadeApproxStep571 Tests" begin
    @test isfinite(compute_pade_approx_571(0.5))
end
