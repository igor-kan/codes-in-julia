module PadeApproxStep3091
export compute_pade_approx_3091
function compute_pade_approx_3091(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep3091,Test
@testset "PadeApproxStep3091" begin
    @test isfinite(compute_pade_approx_3091(0.5))
end
