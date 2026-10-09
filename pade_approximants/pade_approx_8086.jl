module PadeApproxStep8086
export compute_pade_approx_8086
function compute_pade_approx_8086(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep8086,Test
@testset "PadeApproxStep8086" begin
    @test isfinite(compute_pade_approx_8086(0.5))
end
