module PadeApproxStep46

export compute_pade_approx_46

function compute_pade_approx_46(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep46
using Test
@testset "PadeApproxStep46 Tests" begin
    @test isfinite(compute_pade_approx_46(0.5))
end
