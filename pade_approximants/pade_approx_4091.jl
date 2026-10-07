module PadeApproxStep4091
export compute_pade_approx_4091
function compute_pade_approx_4091(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep4091,Test
@testset "PadeApproxStep4091" begin
    @test isfinite(compute_pade_approx_4091(0.5))
end
