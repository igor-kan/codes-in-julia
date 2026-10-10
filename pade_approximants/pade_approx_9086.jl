module PadeApproxStep9086
export compute_pade_approx_9086
function compute_pade_approx_9086(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep9086,Test
@testset "PadeApproxStep9086" begin
    @test isfinite(compute_pade_approx_9086(0.5))
end
