module PadeApproxStep4031
export compute_pade_approx_4031
function compute_pade_approx_4031(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep4031,Test
@testset "PadeApproxStep4031" begin
    @test isfinite(compute_pade_approx_4031(0.5))
end
