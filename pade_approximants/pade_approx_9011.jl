module PadeApproxStep9011
export compute_pade_approx_9011
function compute_pade_approx_9011(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep9011,Test
@testset "PadeApproxStep9011" begin
    @test isfinite(compute_pade_approx_9011(0.5))
end
