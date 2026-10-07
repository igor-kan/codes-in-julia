module PadeApproxStep4006
export compute_pade_approx_4006
function compute_pade_approx_4006(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep4006,Test
@testset "PadeApproxStep4006" begin
    @test isfinite(compute_pade_approx_4006(0.5))
end
