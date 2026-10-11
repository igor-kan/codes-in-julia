module PadeApproxStep10031
export compute_pade_approx_10031
function compute_pade_approx_10031(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep10031,Test
@testset "PadeApproxStep10031" begin
    @test isfinite(compute_pade_approx_10031(0.5))
end
