module PadeApproxStep7021
export compute_pade_approx_7021
function compute_pade_approx_7021(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep7021,Test
@testset "PadeApproxStep7021" begin
    @test isfinite(compute_pade_approx_7021(0.5))
end
