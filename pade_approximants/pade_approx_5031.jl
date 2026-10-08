module PadeApproxStep5031
export compute_pade_approx_5031
function compute_pade_approx_5031(x::Float64)::Float64
    return (1.0+x*1.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep5031,Test
@testset "PadeApproxStep5031" begin
    @test isfinite(compute_pade_approx_5031(0.5))
end
