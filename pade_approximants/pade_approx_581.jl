module PadeApproxStep581

export compute_pade_approx_581

function compute_pade_approx_581(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep581
using Test
@testset "PadeApproxStep581 Tests" begin
    @test isfinite(compute_pade_approx_581(0.5))
end
