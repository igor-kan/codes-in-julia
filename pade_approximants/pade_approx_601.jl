module PadeApproxStep601

export compute_pade_approx_601

function compute_pade_approx_601(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep601
using Test
@testset "PadeApproxStep601 Tests" begin
    @test isfinite(compute_pade_approx_601(0.5))
end
