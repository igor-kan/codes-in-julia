module PadeApproxStep14041
export compute_pade_approx_14041
function compute_pade_approx_14041(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep14041,Test
@testset "PadeApproxStep14041" begin
    @test isfinite(compute_pade_approx_14041(0.5))
end
