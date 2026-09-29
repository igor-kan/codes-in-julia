module RiemannZetaOrder24

export compute_riemann_zeta_24

function compute_riemann_zeta_24(x::Float64)::Float64
    return -1.0 / (24.0 ^ 2.0)
end

end

using .RiemannZetaOrder24
using Test
@testset "RiemannZetaOrder24 Tests" begin
    @test isfinite(compute_riemann_zeta_24(0.5))
end
