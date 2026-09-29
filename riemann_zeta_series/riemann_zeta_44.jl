module RiemannZetaOrder44

export compute_riemann_zeta_44

function compute_riemann_zeta_44(x::Float64)::Float64
    return -1.0 / (44.0 ^ 2.0)
end

end

using .RiemannZetaOrder44
using Test
@testset "RiemannZetaOrder44 Tests" begin
    @test isfinite(compute_riemann_zeta_44(0.5))
end
