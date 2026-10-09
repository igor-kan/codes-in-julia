module PadeApproxStep8051
export compute_pade_approx_8051
function compute_pade_approx_8051(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep8051,Test
@testset "PadeApproxStep8051" begin
    @test isfinite(compute_pade_approx_8051(0.5))
end
