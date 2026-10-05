module PadeApproxStep2061
export compute_pade_approx_2061
function compute_pade_approx_2061(x::Float64)::Float64
    return (1.0+x*1.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep2061,Test
@testset "PadeApproxStep2061" begin
    @test isfinite(compute_pade_approx_2061(0.5))
end
