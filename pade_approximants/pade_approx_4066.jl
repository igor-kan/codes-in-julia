module PadeApproxStep4066
export compute_pade_approx_4066
function compute_pade_approx_4066(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep4066,Test
@testset "PadeApproxStep4066" begin
    @test isfinite(compute_pade_approx_4066(0.5))
end
