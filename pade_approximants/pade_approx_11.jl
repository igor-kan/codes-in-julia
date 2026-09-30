module PadeApproxStep11

export compute_pade_approx_11

function compute_pade_approx_11(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep11
using Test
@testset "PadeApproxStep11 Tests" begin
    @test isfinite(compute_pade_approx_11(0.5))
end
