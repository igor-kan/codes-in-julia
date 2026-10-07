module PadeApproxStep4021
export compute_pade_approx_4021
function compute_pade_approx_4021(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep4021,Test
@testset "PadeApproxStep4021" begin
    @test isfinite(compute_pade_approx_4021(0.5))
end
