module PadeApproxStep10036
export compute_pade_approx_10036
function compute_pade_approx_10036(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep10036,Test
@testset "PadeApproxStep10036" begin
    @test isfinite(compute_pade_approx_10036(0.5))
end
