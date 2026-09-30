module PadeApproxStep61

export compute_pade_approx_61

function compute_pade_approx_61(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep61
using Test
@testset "PadeApproxStep61 Tests" begin
    @test isfinite(compute_pade_approx_61(0.5))
end
