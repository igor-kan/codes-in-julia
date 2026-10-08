module PadeApproxStep5011
export compute_pade_approx_5011
function compute_pade_approx_5011(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep5011,Test
@testset "PadeApproxStep5011" begin
    @test isfinite(compute_pade_approx_5011(0.5))
end
