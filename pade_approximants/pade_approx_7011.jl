module PadeApproxStep7011
export compute_pade_approx_7011
function compute_pade_approx_7011(x::Float64)::Float64
    return (1.0+x*1.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep7011,Test
@testset "PadeApproxStep7011" begin
    @test isfinite(compute_pade_approx_7011(0.5))
end
