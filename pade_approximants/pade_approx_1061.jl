module PadeApproxStep1061

export compute_pade_approx_1061

function compute_pade_approx_1061(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep1061
using Test
@testset "PadeApproxStep1061 Tests" begin
    @test isfinite(compute_pade_approx_1061(0.5))
end
