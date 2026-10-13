module PadeApproxStep14016
export compute_pade_approx_14016
function compute_pade_approx_14016(x::Float64)::Float64
    return (1.0+x*1.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep14016,Test
@testset "PadeApproxStep14016" begin
    @test isfinite(compute_pade_approx_14016(0.5))
end
