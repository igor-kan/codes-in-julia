module PadeApproxStep2096
export compute_pade_approx_2096
function compute_pade_approx_2096(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep2096,Test
@testset "PadeApproxStep2096" begin
    @test isfinite(compute_pade_approx_2096(0.5))
end
