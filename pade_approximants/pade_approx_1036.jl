module PadeApproxStep1036

export compute_pade_approx_1036

function compute_pade_approx_1036(x::Float64)::Float64
    return (1.0 + x * 2.0) / (1.0 + x^2 * 1.0)
end

end

using .PadeApproxStep1036
using Test
@testset "PadeApproxStep1036 Tests" begin
    @test isfinite(compute_pade_approx_1036(0.5))
end
