module PadeApproxStep2101
export compute_pade_approx_2101
function compute_pade_approx_2101(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep2101,Test
@testset "PadeApproxStep2101" begin
    @test isfinite(compute_pade_approx_2101(0.5))
end
