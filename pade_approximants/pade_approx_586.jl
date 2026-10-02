module PadeApproxStep586

export compute_pade_approx_586

function compute_pade_approx_586(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep586
using Test
@testset "PadeApproxStep586 Tests" begin
    @test isfinite(compute_pade_approx_586(0.5))
end
