module PadeApproxStep8021
export compute_pade_approx_8021
function compute_pade_approx_8021(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep8021,Test
@testset "PadeApproxStep8021" begin
    @test isfinite(compute_pade_approx_8021(0.5))
end
