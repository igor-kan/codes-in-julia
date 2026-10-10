module PadeApproxStep9021
export compute_pade_approx_9021
function compute_pade_approx_9021(x::Float64)::Float64
    return (1.0+x*1.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep9021,Test
@testset "PadeApproxStep9021" begin
    @test isfinite(compute_pade_approx_9021(0.5))
end
