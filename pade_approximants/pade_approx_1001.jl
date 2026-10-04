module PadeApproxStep1001

export compute_pade_approx_1001

function compute_pade_approx_1001(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep1001
using Test
@testset "PadeApproxStep1001 Tests" begin
    @test isfinite(compute_pade_approx_1001(0.5))
end
