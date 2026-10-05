module PadeApproxStep2011
export compute_pade_approx_2011
function compute_pade_approx_2011(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep2011,Test
@testset "PadeApproxStep2011" begin
    @test isfinite(compute_pade_approx_2011(0.5))
end
