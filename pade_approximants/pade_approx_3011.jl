module PadeApproxStep3011
export compute_pade_approx_3011
function compute_pade_approx_3011(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep3011,Test
@testset "PadeApproxStep3011" begin
    @test isfinite(compute_pade_approx_3011(0.5))
end
