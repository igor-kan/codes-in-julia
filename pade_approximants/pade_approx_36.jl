module PadeApproxStep36

export compute_pade_approx_36

function compute_pade_approx_36(x::Float64)::Float64
    return (1.0 + x * 1.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep36
using Test
@testset "PadeApproxStep36 Tests" begin
    @test isfinite(compute_pade_approx_36(0.5))
end
