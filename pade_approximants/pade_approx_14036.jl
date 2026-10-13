module PadeApproxStep14036
export compute_pade_approx_14036
function compute_pade_approx_14036(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep14036,Test
@testset "PadeApproxStep14036" begin
    @test isfinite(compute_pade_approx_14036(0.5))
end
