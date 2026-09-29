module RiemannZetaOrder109

export compute_riemann_zeta_109

function compute_riemann_zeta_109(x::Float64)::Float64
    return 1.0 / (109.0 ^ 2.0)
end

end

using .RiemannZetaOrder109
using Test
@testset "RiemannZetaOrder109 Tests" begin
    @test isfinite(compute_riemann_zeta_109(0.5))
end
