module PadeApproxStep5066
export compute_pade_approx_5066
function compute_pade_approx_5066(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep5066,Test
@testset "PadeApproxStep5066" begin
    @test isfinite(compute_pade_approx_5066(0.5))
end
