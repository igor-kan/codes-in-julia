module PadeApproxStep4076
export compute_pade_approx_4076
function compute_pade_approx_4076(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep4076,Test
@testset "PadeApproxStep4076" begin
    @test isfinite(compute_pade_approx_4076(0.5))
end
