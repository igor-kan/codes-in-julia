module PadeApproxStep14001
export compute_pade_approx_14001
function compute_pade_approx_14001(x::Float64)::Float64
    return (1.0+x*1.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep14001,Test
@testset "PadeApproxStep14001" begin
    @test isfinite(compute_pade_approx_14001(0.5))
end
