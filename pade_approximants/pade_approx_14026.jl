module PadeApproxStep14026
export compute_pade_approx_14026
function compute_pade_approx_14026(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep14026,Test
@testset "PadeApproxStep14026" begin
    @test isfinite(compute_pade_approx_14026(0.5))
end
