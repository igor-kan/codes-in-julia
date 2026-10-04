module PadeApproxStep1101

export compute_pade_approx_1101

function compute_pade_approx_1101(x::Float64)::Float64
    return (1.0 + x * 1.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep1101
using Test
@testset "PadeApproxStep1101 Tests" begin
    @test isfinite(compute_pade_approx_1101(0.5))
end
