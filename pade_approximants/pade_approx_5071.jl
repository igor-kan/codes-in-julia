module PadeApproxStep5071
export compute_pade_approx_5071
function compute_pade_approx_5071(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep5071,Test
@testset "PadeApproxStep5071" begin
    @test isfinite(compute_pade_approx_5071(0.5))
end
