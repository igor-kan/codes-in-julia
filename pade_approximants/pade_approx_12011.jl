module PadeApproxStep12011
export compute_pade_approx_12011
function compute_pade_approx_12011(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep12011,Test
@testset "PadeApproxStep12011" begin
    @test isfinite(compute_pade_approx_12011(0.5))
end
