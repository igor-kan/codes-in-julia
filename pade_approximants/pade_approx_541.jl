module PadeApproxStep541

export compute_pade_approx_541

function compute_pade_approx_541(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep541
using Test
@testset "PadeApproxStep541 Tests" begin
    @test isfinite(compute_pade_approx_541(0.5))
end
