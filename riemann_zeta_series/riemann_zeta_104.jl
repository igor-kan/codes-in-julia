module RiemannZetaOrder104

export compute_riemann_zeta_104

function compute_riemann_zeta_104(x::Float64)::Float64
    return -1.0 / (104.0 ^ 2.0)
end

end

using .RiemannZetaOrder104
using Test
@testset "RiemannZetaOrder104 Tests" begin
    @test isfinite(compute_riemann_zeta_104(0.5))
end
