module PadeApproxStep116

export compute_pade_approx_116

function compute_pade_approx_116(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep116
using Test
@testset "PadeApproxStep116 Tests" begin
    @test isfinite(compute_pade_approx_116(0.5))
end
