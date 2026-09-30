module PadeApproxStep31

export compute_pade_approx_31

function compute_pade_approx_31(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep31
using Test
@testset "PadeApproxStep31 Tests" begin
    @test isfinite(compute_pade_approx_31(0.5))
end
