module PadeApproxStep8006
export compute_pade_approx_8006
function compute_pade_approx_8006(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep8006,Test
@testset "PadeApproxStep8006" begin
    @test isfinite(compute_pade_approx_8006(0.5))
end
