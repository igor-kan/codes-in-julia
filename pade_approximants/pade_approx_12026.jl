module PadeApproxStep12026
export compute_pade_approx_12026
function compute_pade_approx_12026(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep12026,Test
@testset "PadeApproxStep12026" begin
    @test isfinite(compute_pade_approx_12026(0.5))
end
