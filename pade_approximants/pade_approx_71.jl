module PadeApproxStep71

export compute_pade_approx_71

function compute_pade_approx_71(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep71
using Test
@testset "PadeApproxStep71 Tests" begin
    @test isfinite(compute_pade_approx_71(0.5))
end
