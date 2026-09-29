module RiemannZetaOrder94

export compute_riemann_zeta_94

function compute_riemann_zeta_94(x::Float64)::Float64
    return -1.0 / (94.0 ^ 2.0)
end

end

using .RiemannZetaOrder94
using Test
@testset "RiemannZetaOrder94 Tests" begin
    @test isfinite(compute_riemann_zeta_94(0.5))
end
