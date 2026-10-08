module PadeApproxStep7016
export compute_pade_approx_7016
function compute_pade_approx_7016(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep7016,Test
@testset "PadeApproxStep7016" begin
    @test isfinite(compute_pade_approx_7016(0.5))
end
