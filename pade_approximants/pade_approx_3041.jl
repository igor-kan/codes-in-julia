module PadeApproxStep3041
export compute_pade_approx_3041
function compute_pade_approx_3041(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep3041,Test
@testset "PadeApproxStep3041" begin
    @test isfinite(compute_pade_approx_3041(0.5))
end
