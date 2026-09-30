module PadeApproxStep96

export compute_pade_approx_96

function compute_pade_approx_96(x::Float64)::Float64
    return (1.0 + x * 1.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep96
using Test
@testset "PadeApproxStep96 Tests" begin
    @test isfinite(compute_pade_approx_96(0.5))
end
