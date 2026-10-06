module PadeApproxStep3021
export compute_pade_approx_3021
function compute_pade_approx_3021(x::Float64)::Float64
    return (1.0+x*1.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep3021,Test
@testset "PadeApproxStep3021" begin
    @test isfinite(compute_pade_approx_3021(0.5))
end
