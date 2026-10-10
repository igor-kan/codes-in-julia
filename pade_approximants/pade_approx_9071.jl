module PadeApproxStep9071
export compute_pade_approx_9071
function compute_pade_approx_9071(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep9071,Test
@testset "PadeApproxStep9071" begin
    @test isfinite(compute_pade_approx_9071(0.5))
end
