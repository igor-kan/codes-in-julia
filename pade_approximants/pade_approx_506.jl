module PadeApproxStep506

export compute_pade_approx_506

function compute_pade_approx_506(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep506
using Test
@testset "PadeApproxStep506 Tests" begin
    @test isfinite(compute_pade_approx_506(0.5))
end
