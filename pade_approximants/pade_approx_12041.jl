module PadeApproxStep12041
export compute_pade_approx_12041
function compute_pade_approx_12041(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep12041,Test
@testset "PadeApproxStep12041" begin
    @test isfinite(compute_pade_approx_12041(0.5))
end
