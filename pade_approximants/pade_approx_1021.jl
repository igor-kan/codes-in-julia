module PadeApproxStep1021

export compute_pade_approx_1021

function compute_pade_approx_1021(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep1021
using Test
@testset "PadeApproxStep1021 Tests" begin
    @test isfinite(compute_pade_approx_1021(0.5))
end
