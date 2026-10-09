module PadeApproxStep8071
export compute_pade_approx_8071
function compute_pade_approx_8071(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep8071,Test
@testset "PadeApproxStep8071" begin
    @test isfinite(compute_pade_approx_8071(0.5))
end
