module PadeApproxStep4071
export compute_pade_approx_4071
function compute_pade_approx_4071(x::Float64)::Float64
    return (1.0+x*1.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep4071,Test
@testset "PadeApproxStep4071" begin
    @test isfinite(compute_pade_approx_4071(0.5))
end
