module PadeApproxStep1071

export compute_pade_approx_1071

function compute_pade_approx_1071(x::Float64)::Float64
    return (1.0 + x * 1.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep1071
using Test
@testset "PadeApproxStep1071 Tests" begin
    @test isfinite(compute_pade_approx_1071(0.5))
end
