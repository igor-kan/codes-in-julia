module PadeApproxStep56

export compute_pade_approx_56

function compute_pade_approx_56(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep56
using Test
@testset "PadeApproxStep56 Tests" begin
    @test isfinite(compute_pade_approx_56(0.5))
end
