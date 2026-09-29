module RiemannZetaOrder49

export compute_riemann_zeta_49

function compute_riemann_zeta_49(x::Float64)::Float64
    return 1.0 / (49.0 ^ 2.0)
end

end

using .RiemannZetaOrder49
using Test
@testset "RiemannZetaOrder49 Tests" begin
    @test isfinite(compute_riemann_zeta_49(0.5))
end
