module PadeApproxStep8011
export compute_pade_approx_8011
function compute_pade_approx_8011(x::Float64)::Float64
    return (1.0+x*2.0)/(1.0+x^2*2.0)
end
end
using .PadeApproxStep8011,Test
@testset "PadeApproxStep8011" begin
    @test isfinite(compute_pade_approx_8011(0.5))
end
