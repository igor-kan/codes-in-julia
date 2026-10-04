module PadeApproxStep1081

export compute_pade_approx_1081

function compute_pade_approx_1081(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep1081
using Test
@testset "PadeApproxStep1081 Tests" begin
    @test isfinite(compute_pade_approx_1081(0.5))
end
