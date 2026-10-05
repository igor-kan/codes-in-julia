module PadeApproxStep2036
export compute_pade_approx_2036
function compute_pade_approx_2036(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep2036,Test
@testset "PadeApproxStep2036" begin
    @test isfinite(compute_pade_approx_2036(0.5))
end
