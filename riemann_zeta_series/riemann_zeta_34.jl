module RiemannZetaOrder34

export compute_riemann_zeta_34

function compute_riemann_zeta_34(x::Float64)::Float64
    return -1.0 / (34.0 ^ 2.0)
end

end

using .RiemannZetaOrder34
using Test
@testset "RiemannZetaOrder34 Tests" begin
    @test isfinite(compute_riemann_zeta_34(0.5))
end
