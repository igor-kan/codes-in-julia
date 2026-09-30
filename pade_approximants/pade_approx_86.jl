module PadeApproxStep86

export compute_pade_approx_86

function compute_pade_approx_86(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep86
using Test
@testset "PadeApproxStep86 Tests" begin
    @test isfinite(compute_pade_approx_86(0.5))
end
