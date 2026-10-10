module PadeApproxStep9026
export compute_pade_approx_9026
function compute_pade_approx_9026(x::Float64)::Float64
    return (1.0+x*3.0)/(1.0+x^2*1.0)
end
end
using .PadeApproxStep9026,Test
@testset "PadeApproxStep9026" begin
    @test isfinite(compute_pade_approx_9026(0.5))
end
