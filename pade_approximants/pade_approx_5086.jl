module PadeApproxStep5086
export compute_pade_approx_5086
function compute_pade_approx_5086(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep5086,Test
@testset "PadeApproxStep5086" begin
    @test isfinite(compute_pade_approx_5086(0.5))
end
