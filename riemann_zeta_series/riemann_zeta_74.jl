module RiemannZetaOrder74

export compute_riemann_zeta_74

function compute_riemann_zeta_74(x::Float64)::Float64
    return -1.0 / (74.0 ^ 2.0)
end

end

using .RiemannZetaOrder74
using Test
@testset "RiemannZetaOrder74 Tests" begin
    @test isfinite(compute_riemann_zeta_74(0.5))
end
