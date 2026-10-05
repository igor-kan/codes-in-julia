module PadeApproxStep2086
export compute_pade_approx_2086
function compute_pade_approx_2086(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep2086,Test
@testset "PadeApproxStep2086" begin
    @test isfinite(compute_pade_approx_2086(0.5))
end
