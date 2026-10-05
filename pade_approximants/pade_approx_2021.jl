module PadeApproxStep2021
export compute_pade_approx_2021
function compute_pade_approx_2021(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep2021,Test
@testset "PadeApproxStep2021" begin
    @test isfinite(compute_pade_approx_2021(0.5))
end
