module PadeApproxStep5041
export compute_pade_approx_5041
function compute_pade_approx_5041(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep5041,Test
@testset "PadeApproxStep5041" begin
    @test isfinite(compute_pade_approx_5041(0.5))
end
