module PadeApproxStep1091

export compute_pade_approx_1091

function compute_pade_approx_1091(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep1091
using Test
@testset "PadeApproxStep1091 Tests" begin
    @test isfinite(compute_pade_approx_1091(0.5))
end
