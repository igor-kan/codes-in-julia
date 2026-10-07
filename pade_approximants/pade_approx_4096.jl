module PadeApproxStep4096
export compute_pade_approx_4096
function compute_pade_approx_4096(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep4096,Test
@testset "PadeApproxStep4096" begin
    @test isfinite(compute_pade_approx_4096(0.5))
end
