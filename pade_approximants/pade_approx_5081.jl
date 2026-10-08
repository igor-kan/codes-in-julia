module PadeApproxStep5081
export compute_pade_approx_5081
function compute_pade_approx_5081(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep5081,Test
@testset "PadeApproxStep5081" begin
    @test isfinite(compute_pade_approx_5081(0.5))
end
