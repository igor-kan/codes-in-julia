module PadeApproxStep2051
export compute_pade_approx_2051
function compute_pade_approx_2051(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep2051,Test
@testset "PadeApproxStep2051" begin
    @test isfinite(compute_pade_approx_2051(0.5))
end
