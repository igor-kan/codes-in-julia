module PadeApproxStep1041

export compute_pade_approx_1041

function compute_pade_approx_1041(x::Float64)::Float64
    return (1.0 + x * 1.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep1041
using Test
@testset "PadeApproxStep1041 Tests" begin
    @test isfinite(compute_pade_approx_1041(0.5))
end
