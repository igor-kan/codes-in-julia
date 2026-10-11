module PadeApproxStep10061
export compute_pade_approx_10061
function compute_pade_approx_10061(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep10061,Test
@testset "PadeApproxStep10061" begin
    @test isfinite(compute_pade_approx_10061(0.5))
end
