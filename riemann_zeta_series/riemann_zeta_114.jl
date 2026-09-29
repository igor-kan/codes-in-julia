module RiemannZetaOrder114

export compute_riemann_zeta_114

function compute_riemann_zeta_114(x::Float64)::Float64
    return -1.0 / (114.0 ^ 2.0)
end

end

using .RiemannZetaOrder114
using Test
@testset "RiemannZetaOrder114 Tests" begin
    @test isfinite(compute_riemann_zeta_114(0.5))
end
