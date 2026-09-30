module PadeApproxStep41

export compute_pade_approx_41

function compute_pade_approx_41(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep41
using Test
@testset "PadeApproxStep41 Tests" begin
    @test isfinite(compute_pade_approx_41(0.5))
end
