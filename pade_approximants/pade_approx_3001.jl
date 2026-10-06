module PadeApproxStep3001
export compute_pade_approx_3001
function compute_pade_approx_3001(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep3001,Test
@testset "PadeApproxStep3001" begin
    @test isfinite(compute_pade_approx_3001(0.5))
end
