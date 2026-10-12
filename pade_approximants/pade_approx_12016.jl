module PadeApproxStep12016
export compute_pade_approx_12016
function compute_pade_approx_12016(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep12016,Test
@testset "PadeApproxStep12016" begin
    @test isfinite(compute_pade_approx_12016(0.5))
end
