module PadeApproxStep10021
export compute_pade_approx_10021
function compute_pade_approx_10021(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep10021,Test
@testset "PadeApproxStep10021" begin
    @test isfinite(compute_pade_approx_10021(0.5))
end
