module PadeApproxStep14011
export compute_pade_approx_14011
function compute_pade_approx_14011(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep14011,Test
@testset "PadeApproxStep14011" begin
    @test isfinite(compute_pade_approx_14011(0.5))
end
