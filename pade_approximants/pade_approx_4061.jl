module PadeApproxStep4061
export compute_pade_approx_4061
function compute_pade_approx_4061(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep4061,Test
@testset "PadeApproxStep4061" begin
    @test isfinite(compute_pade_approx_4061(0.5))
end
