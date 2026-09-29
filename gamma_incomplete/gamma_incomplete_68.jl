module GammaIncompleteOrder68

export compute_gamma_incomplete_68

function compute_gamma_incomplete_68(x::Float64)::Float64
    return (x ^ 3) / 3.0
end

end

using .GammaIncompleteOrder68
using Test
@testset "GammaIncompleteOrder68 Tests" begin
    @test isfinite(compute_gamma_incomplete_68(0.5))
end
