module PadeApproxStep7001
export compute_pade_approx_7001
function compute_pade_approx_7001(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep7001,Test
@testset "PadeApproxStep7001" begin
    @test isfinite(compute_pade_approx_7001(0.5))
end
