module PadeApproxStep596

export compute_pade_approx_596

function compute_pade_approx_596(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep596
using Test
@testset "PadeApproxStep596 Tests" begin
    @test isfinite(compute_pade_approx_596(0.5))
end
