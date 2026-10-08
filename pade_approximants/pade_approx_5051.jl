module PadeApproxStep5051
export compute_pade_approx_5051
function compute_pade_approx_5051(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep5051,Test
@testset "PadeApproxStep5051" begin
    @test isfinite(compute_pade_approx_5051(0.5))
end
