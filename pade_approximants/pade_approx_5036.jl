module PadeApproxStep5036
export compute_pade_approx_5036
function compute_pade_approx_5036(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep5036,Test
@testset "PadeApproxStep5036" begin
    @test isfinite(compute_pade_approx_5036(0.5))
end
