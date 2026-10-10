module PadeApproxStep9036
export compute_pade_approx_9036
function compute_pade_approx_9036(x::Float64)::Float64
    return (1.0+x*1.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep9036,Test
@testset "PadeApproxStep9036" begin
    @test isfinite(compute_pade_approx_9036(0.5))
end
