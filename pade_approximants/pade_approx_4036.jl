module PadeApproxStep4036
export compute_pade_approx_4036
function compute_pade_approx_4036(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep4036,Test
@testset "PadeApproxStep4036" begin
    @test isfinite(compute_pade_approx_4036(0.5))
end
