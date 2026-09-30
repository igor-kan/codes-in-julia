module PadeApproxStep26

export compute_pade_approx_26

function compute_pade_approx_26(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep26
using Test
@testset "PadeApproxStep26 Tests" begin
    @test isfinite(compute_pade_approx_26(0.5))
end
