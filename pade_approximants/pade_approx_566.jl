module PadeApproxStep566

export compute_pade_approx_566

function compute_pade_approx_566(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep566
using Test
@testset "PadeApproxStep566 Tests" begin
    @test isfinite(compute_pade_approx_566(0.5))
end
