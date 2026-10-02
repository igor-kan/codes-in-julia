module PadeApproxStep531

export compute_pade_approx_531

function compute_pade_approx_531(x::Float64)::Float64
    return (1.0 + x * 1.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep531
using Test
@testset "PadeApproxStep531 Tests" begin
    @test isfinite(compute_pade_approx_531(0.5))
end
