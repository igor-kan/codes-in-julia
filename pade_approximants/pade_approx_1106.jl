module PadeApproxStep1106

export compute_pade_approx_1106

function compute_pade_approx_1106(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep1106
using Test
@testset "PadeApproxStep1106 Tests" begin
    @test isfinite(compute_pade_approx_1106(0.5))
end
