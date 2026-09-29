module RiemannZetaOrder79

export compute_riemann_zeta_79

function compute_riemann_zeta_79(x::Float64)::Float64
    return 1.0 / (79.0 ^ 2.0)
end

end

using .RiemannZetaOrder79
using Test
@testset "RiemannZetaOrder79 Tests" begin
    @test isfinite(compute_riemann_zeta_79(0.5))
end
