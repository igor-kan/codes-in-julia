module PadeApproxStep2091
export compute_pade_approx_2091
function compute_pade_approx_2091(x::Float64)::Float64
    return (1.0+x*1.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep2091,Test
@testset "PadeApproxStep2091" begin
    @test isfinite(compute_pade_approx_2091(0.5))
end
