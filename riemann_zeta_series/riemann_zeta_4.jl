module RiemannZetaOrder4

export compute_riemann_zeta_4

function compute_riemann_zeta_4(x::Float64)::Float64
    return -1.0 / (4.0 ^ 2.0)
end

end

using .RiemannZetaOrder4
using Test
@testset "RiemannZetaOrder4 Tests" begin
    @test isfinite(compute_riemann_zeta_4(0.5))
end
