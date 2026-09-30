module PadeApproxStep76

export compute_pade_approx_76

function compute_pade_approx_76(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep76
using Test
@testset "PadeApproxStep76 Tests" begin
    @test isfinite(compute_pade_approx_76(0.5))
end
