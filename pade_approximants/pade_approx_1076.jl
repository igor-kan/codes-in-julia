module PadeApproxStep1076

export compute_pade_approx_1076

function compute_pade_approx_1076(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep1076
using Test
@testset "PadeApproxStep1076 Tests" begin
    @test isfinite(compute_pade_approx_1076(0.5))
end
