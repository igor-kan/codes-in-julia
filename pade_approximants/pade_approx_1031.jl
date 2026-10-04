module PadeApproxStep1031

export compute_pade_approx_1031

function compute_pade_approx_1031(x::Float64)::Float64
    return (1.0 + x * 3.0) / (1.0 + x^2 * 2.0)
end

end

using .PadeApproxStep1031
using Test
@testset "PadeApproxStep1031 Tests" begin
    @test isfinite(compute_pade_approx_1031(0.5))
end
