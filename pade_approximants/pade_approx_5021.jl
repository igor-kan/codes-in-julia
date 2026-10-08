module PadeApproxStep5021
export compute_pade_approx_5021
function compute_pade_approx_5021(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep5021,Test
@testset "PadeApproxStep5021" begin
    @test isfinite(compute_pade_approx_5021(0.5))
end
