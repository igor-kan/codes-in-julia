module PadeApproxStep501

export compute_pade_approx_501

function compute_pade_approx_501(x::Float64)::Float64
    return (1.0 + x * 1.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep501
using Test
@testset "PadeApproxStep501 Tests" begin
    @test isfinite(compute_pade_approx_501(0.5))
end
