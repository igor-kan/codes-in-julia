module PadeApproxStep4051
export compute_pade_approx_4051
function compute_pade_approx_4051(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep4051,Test
@testset "PadeApproxStep4051" begin
    @test isfinite(compute_pade_approx_4051(0.5))
end
