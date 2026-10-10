module PadeApproxStep9091
export compute_pade_approx_9091
function compute_pade_approx_9091(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep9091,Test
@testset "PadeApproxStep9091" begin
    @test isfinite(compute_pade_approx_9091(0.5))
end
