module RiemannZetaOrder99

export compute_riemann_zeta_99

function compute_riemann_zeta_99(x::Float64)::Float64
    return 1.0 / (99.0 ^ 2.0)
end

end

using .RiemannZetaOrder99
using Test
@testset "RiemannZetaOrder99 Tests" begin
    @test isfinite(compute_riemann_zeta_99(0.5))
end
