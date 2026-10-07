module PadeApproxStep4001
export compute_pade_approx_4001
function compute_pade_approx_4001(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep4001,Test
@testset "PadeApproxStep4001" begin
    @test isfinite(compute_pade_approx_4001(0.5))
end
