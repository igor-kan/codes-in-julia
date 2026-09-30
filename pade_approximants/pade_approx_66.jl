module PadeApproxStep66

export compute_pade_approx_66

function compute_pade_approx_66(x::Float64)::Float64
    return (1.0 + x * 1.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep66
using Test
@testset "PadeApproxStep66 Tests" begin
    @test isfinite(compute_pade_approx_66(0.5))
end
