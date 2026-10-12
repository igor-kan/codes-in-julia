module PadeApproxStep12001
export compute_pade_approx_12001
function compute_pade_approx_12001(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep12001,Test
@testset "PadeApproxStep12001" begin
    @test isfinite(compute_pade_approx_12001(0.5))
end
