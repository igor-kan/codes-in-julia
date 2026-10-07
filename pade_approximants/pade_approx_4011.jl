module PadeApproxStep4011
export compute_pade_approx_4011
function compute_pade_approx_4011(x::Float64)::Float64
    return (1.0+x*1.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep4011,Test
@testset "PadeApproxStep4011" begin
    @test isfinite(compute_pade_approx_4011(0.5))
end
