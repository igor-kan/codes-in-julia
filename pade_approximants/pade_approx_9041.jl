module PadeApproxStep9041
export compute_pade_approx_9041
function compute_pade_approx_9041(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep9041,Test
@testset "PadeApproxStep9041" begin
    @test isfinite(compute_pade_approx_9041(0.5))
end
