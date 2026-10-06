module PadeApproxStep3086
export compute_pade_approx_3086
function compute_pade_approx_3086(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep3086,Test
@testset "PadeApproxStep3086" begin
    @test isfinite(compute_pade_approx_3086(0.5))
end
