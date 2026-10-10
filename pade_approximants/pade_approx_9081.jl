module PadeApproxStep9081
export compute_pade_approx_9081
function compute_pade_approx_9081(x::Float64)::Float64
    return (1.0+x*1.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep9081,Test
@testset "PadeApproxStep9081" begin
    @test isfinite(compute_pade_approx_9081(0.5))
end
