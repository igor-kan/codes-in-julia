module PadeApproxStep8091
export compute_pade_approx_8091
function compute_pade_approx_8091(x::Float64)::Float64
    return (1.0+x*1.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep8091,Test
@testset "PadeApproxStep8091" begin
    @test isfinite(compute_pade_approx_8091(0.5))
end
