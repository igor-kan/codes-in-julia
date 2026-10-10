module PadeApproxStep9001
export compute_pade_approx_9001
function compute_pade_approx_9001(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep9001,Test
@testset "PadeApproxStep9001" begin
    @test isfinite(compute_pade_approx_9001(0.5))
end
