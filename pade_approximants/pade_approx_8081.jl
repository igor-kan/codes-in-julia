module PadeApproxStep8081
export compute_pade_approx_8081
function compute_pade_approx_8081(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep8081,Test
@testset "PadeApproxStep8081" begin
    @test isfinite(compute_pade_approx_8081(0.5))
end
