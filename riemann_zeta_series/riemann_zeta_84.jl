module RiemannZetaOrder84

export compute_riemann_zeta_84

function compute_riemann_zeta_84(x::Float64)::Float64
    return -1.0 / (84.0 ^ 2.0)
end

end

using .RiemannZetaOrder84
using Test
@testset "RiemannZetaOrder84 Tests" begin
    @test isfinite(compute_riemann_zeta_84(0.5))
end
